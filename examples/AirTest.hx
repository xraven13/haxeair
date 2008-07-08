import flash.display.Sprite;
import flash.display.Stage;
import flash.display.Bitmap;

import flash.display.NativeWindow;
import flash.display.NativeMenu;
import flash.display.NativeMenuItem;

import flash.events.InvokeEvent;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.NativeWindowDisplayStateEvent;
import flash.events.NativeWindowBoundsEvent;

import flash.events.IOErrorEvent;

import flash.filesystem.File;
import flash.filesystem.FileMode;
import flash.filesystem.FileStream;

import flash.desktop.Clipboard;
import flash.desktop.ClipboardFormats;

import flash.desktop.NativeDragManager;
import flash.events.NativeDragEvent;

import flash.net.URLRequest;

import flash.data.EncryptedLocalStore;

import flash.desktop.NativeApplication;

import air.net.URLMonitor;
import flash.events.StatusEvent;

class AirTest {
	
	static var defaultTest = 3;
    static function main() {
		var app = NativeApplication.nativeApplication;
		app.addEventListener(InvokeEvent.INVOKE, function (e: InvokeEvent) {
			var testNumber = (e.arguments.length > 0) ? Std.parseInt(e.arguments[0]) : defaultTest;
			switch (testNumber) {
				case 1: testClipboard();
				case 2: testDir("TestDir", "TestFile.txt");
				case 3: testWindows("http://comapping.com");
				case 4: testEncryptedLocalStorage("Julia");
				case 5: testDragNDropToApp();
				case 6: testDragNDropFromApp("app:/test.gif");
				case 7: testNetworkMonitoring("http://go.comapping.com");
			}
		});
		app.setAsDefaultApplication("comap");
		app.idleThreshold = 120;
		app.addEventListener(Event.USER_IDLE, function (idleEvent: Event) { trace("Bye..."); });
		app.addEventListener(Event.USER_PRESENT, function (presEvent: Event) { trace("Hi again!"); });
	}
	
	static function testNetworkMonitoring(url: String) {		
		var monitor = new URLMonitor(new URLRequest(url));
		monitor.addEventListener(StatusEvent.STATUS, function (announceStatus: StatusEvent) { 
			trace(" The url " + url + " is " + (monitor.available ? "" : " not " ) + "available"); 
		});
		monitor.start();

		NativeApplication.nativeApplication.addEventListener(Event.NETWORK_CHANGE, function (e: Event) { trace("network changed"); });
	}
	
	static function testWindows(url: String) {
		trace("test windows");
		var btn1 = makeBtn("Load content to new Window", callback(load, true, url));
		var btn2 = makeBtn("Load content here", callback(load, false, url));
		btn2.x = btn1.x + btn1.width + 20;
						
		flash.Lib.current.addChild(btn1);
		flash.Lib.current.addChild(btn2);		
	}
	
	static function testClipboard() {
		if (!Clipboard.generalClipboard.hasFormat(ClipboardFormats.TEXT_FORMAT)) {
			var textToCopy = "Copy to clipboard.";
			Clipboard.generalClipboard.clear();
			Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT, textToCopy, false);
		}
		var clipboardTxt = Clipboard.generalClipboard.getData(ClipboardFormats.TEXT_FORMAT);
		trace(clipboardTxt);
	}
	
	static function testDragNDropToApp() {
		// from desktop to the app		
		var btn = makeBtn("drag files here", null);
		btn.addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER, function (e: NativeDragEvent) {
				trace("native drag enter");
				NativeDragManager.acceptDragDrop(btn);
			});
		btn.addEventListener(NativeDragEvent.NATIVE_DRAG_DROP, function (e: NativeDragEvent) {
				trace("native drag'n'drop");
				var files: Array<File> = e.clipboard.getData(flash.desktop.ClipboardFormats.FILE_LIST_FORMAT);
				for (f in files) {
					trace(f.nativePath);
				}
			});
		flash.Lib.current.addChild(btn);
	}
	
	static function testDragNDropFromApp(imageURL: String) {
		//from the app to the desktop
		var loader = new flash.display.Loader();
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function (event: Event) {
				var image: Bitmap =  event.target.loader.content; //loader.content;
				loader.addEventListener(MouseEvent.MOUSE_DOWN, function (e: MouseEvent) { 
					var bitmapFile = new File(imageURL);
					var transferObject = new Clipboard();
					transferObject.setData("CUSTOM_BITMAP", image, true); //Flash object by value and by reference
					transferObject.setData(ClipboardFormats.BITMAP_FORMAT, image.bitmapData, false);
					transferObject.setData(ClipboardFormats.FILE_LIST_FORMAT, [bitmapFile], false);
					NativeDragManager.doDrag(loader, transferObject, image.bitmapData, new flash.geom.Point(-loader.mouseX, -loader.mouseY));
				});
			});
        loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, function (e: IOErrorEvent) { trace("load failed: " + e); });
		loader.load(new URLRequest(imageURL));
		flash.Lib.current.stage.addChild(loader);
	}
	
	static function testEncryptedLocalStorage(firstName: String) {
		var bytes = new flash.utils.ByteArray();
		bytes.writeUTFBytes(firstName);
		EncryptedLocalStore.setItem("firstName", bytes);
		var storedValue = EncryptedLocalStore.getItem("firstName");
		trace(storedValue.readUTFBytes(storedValue.length));
		EncryptedLocalStore.removeItem("firstName");
	}
	
	static function testDir(dirName: String, fileName: String) {
	 try {
		var dir = File.applicationStorageDirectory.resolvePath(dirName);
		if (dir.exists && dir.isDirectory) {
			trace("The directory " + dir.name + ": ");
			var listing = dir.getDirectoryListing();
			var fileToRead = null;
			for (f in listing) {
				trace(" - " + f.nativePath);
				if (f.name == fileName) {
					fileToRead = f;
				}
			}
			if (null == fileToRead && listing.length > 0) {
				fileToRead = listing[0];
			}
			if (null != fileToRead) {
				var fileStream = new FileStream();
				fileStream.open(fileToRead, FileMode.READ);
				var content = fileStream.readMultiByte(fileToRead.size, File.systemCharset);
				trace(" File content: \n" + content);
				fileStream.close();
			}
		} else {
			trace("Create directory " + dirName);
			dir.createDirectory();
			var newFile = dir.resolvePath(fileName);
			var fileStream = new FileStream();
			fileStream.open(newFile, FileMode.WRITE);
			fileStream.writeMultiByte(" Hi everybody! ", File.systemCharset);
			fileStream.close();
			testDir(dirName, fileName);
		}
	 } catch (e: Dynamic) {
		trace(e);
	 } 
	}
	
	static function makeBtn(txt: String, onClick: Void -> Void): Sprite {
		var textField = new flash.text.TextField();
		textField.text = txt;
		textField.autoSize = flash.text.TextFieldAutoSize.LEFT;
		
		var btn = new Sprite();
		btn.addChild(textField);
		textField.x = 2;
		textField.y = 2;
		var width = textField.width + 4;
		var height = textField.height + 4;
		btn.graphics.beginFill(0xFFCC00);
		btn.graphics.drawRoundRect(0, 0, width, height, 5);
		if (null != onClick) {
			btn.buttonMode = true;
			btn.useHandCursor = true;
			btn.addEventListener(MouseEvent.CLICK, function (e: MouseEvent) { onClick(); } );
		}
		return btn;
	}
	
	static function load(newWindow: Bool, url: String) {
		var window = newWindow ? createWindow("My Window", 600, 500) : flash.Lib.current.stage.nativeWindow;
		loadContent(window, url);
	}
		
	static function createWindow(title: String, width: Float, height: Float, ?shouldStopResize: Bool) {
		//create the init options
		var options = new flash.display.NativeWindowInitOptions();
		options.transparent = false;
		options.systemChrome = flash.display.NativeWindowSystemChrome.STANDARD;
		options.type = flash.display.NativeWindowType.NORMAL;
		
		//create the window
		var newWindow = new NativeWindow(options);
		newWindow.title = title;
		newWindow.width = width;
		newWindow.height = height;
		
		// add menu 
		var root = new NativeMenu();
		root.addEventListener(Event.SELECT, function (e: Event) {
			var menuItem: NativeMenuItem = e.target;
			trace(menuItem.label + " has been selected");
		});
		root.addItem(new NativeMenuItem("menu 1"));
		root.addItem(new NativeMenuItem("menu 2"));
		root.addItem(new NativeMenuItem("menu 3", true));
		root.addItem(new NativeMenuItem("menu 4"));
		var submenu = new NativeMenu();
		var subItem = new NativeMenuItem("subItem");
		subItem.keyEquivalent = "s";
		submenu.addItem(subItem);
		root.addSubmenu(submenu, "submenu");
		newWindow.menu = root;
		
		//add window events
		newWindow.addEventListener(NativeWindowDisplayStateEvent.DISPLAY_STATE_CHANGE, 
			function (e: NativeWindowDisplayStateEvent) {
				trace("display state changed to " + newWindow.displayState);
			});
	/*	newWindow.addEventListener(NativeWindowBoundsEvent.RESIZING, 
			function (boundsEvent: NativeWindowBoundsEvent) {
				trace("attempt to move the window!");
				if (null == shouldStopResize) {
					shouldStopResize = true;
				}
				if (boundsEvent.type == NativeWindowBoundsEvent.RESIZING && shouldStopResize) {
					boundsEvent.preventDefault();
				}
			});
	*/	
		//activate and show the new window
		newWindow.activate();
		
		return newWindow;
	}
	
	static function loadContent(window: NativeWindow, url: String, ?width: Null<Float>, ?height: Null<Float>) {
		var htmlView = new flash.html.HTMLLoader();
		htmlView.width = (null != width) ? width : window.width;
		htmlView.height = (null != height) ? height : window.height;
		//set the stage
		window.stage.align = flash.display.StageAlign.TOP_LEFT;
		window.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
		window.stage.addChild(htmlView);
		
		window.addEventListener(NativeWindowBoundsEvent.RESIZE, function (e: NativeWindowBoundsEvent) {
				htmlView.width = window.width;
				htmlView.height = window.height;
			});
	
		htmlView.load(new URLRequest(url));
	}
}