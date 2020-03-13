import 'dart:ffi' 
show DynamicLibrary, NativeFunction, Int32;

main(){
	final lib = DynamicLibrary.open('add.dylib');

	final int Function(int num1,int num2) add = lib
		.lookup<NativeFunction<Int32 Function( Int32, Int32 )>>('add')
		.asFunction();

	print( add( 1, 2 ) );
}
