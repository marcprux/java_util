#if canImport(Glibc)
import Glibc
#elseif canImport(Darwin)
import Darwin
#elseif canImport(Android)
import Android
#endif
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql|java/awt|javax/swing' ///

/// interface java.util.prefs.NodeChangeListener ///

public protocol NodeChangeListener: EventListener {

    /// public abstract void java.util.prefs.NodeChangeListener.childAdded(java.util.prefs.NodeChangeEvent)

    func childAdded( evt: NodeChangeEvent? )

    /// public abstract void java.util.prefs.NodeChangeListener.childRemoved(java.util.prefs.NodeChangeEvent)

    func childRemoved( evt: NodeChangeEvent? )

}


open class NodeChangeListenerForward: EventListenerForward, NodeChangeListener {

    private static var NodeChangeListenerJNIClass: jclass?

    /// public abstract void java.util.prefs.NodeChangeListener.childAdded(java.util.prefs.NodeChangeEvent)

    private static var childAdded_MethodID_3: jmethodID?

    open func childAdded( evt: NodeChangeEvent? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: evt, locals: &__locals )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "childAdded", methodSig: "(Ljava/util/prefs/NodeChangeEvent;)V", methodCache: &NodeChangeListenerForward.childAdded_MethodID_3, args: &__args, locals: &__locals )
    }

    open func childAdded( _ _evt: NodeChangeEvent? ) {
        childAdded( evt: _evt )
    }

    /// public abstract void java.util.prefs.NodeChangeListener.childRemoved(java.util.prefs.NodeChangeEvent)

    private static var childRemoved_MethodID_4: jmethodID?

    open func childRemoved( evt: NodeChangeEvent? ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        __args[0] = JNIType.toJava( value: evt, locals: &__locals )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "childRemoved", methodSig: "(Ljava/util/prefs/NodeChangeEvent;)V", methodCache: &NodeChangeListenerForward.childRemoved_MethodID_4, args: &__args, locals: &__locals )
    }

    open func childRemoved( _ _evt: NodeChangeEvent? ) {
        childRemoved( evt: _evt )
    }

}

private typealias NodeChangeListener_childAdded_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject? ) -> ()

private func NodeChangeListener_childAdded_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ evt: jobject? ) -> () {
    NodeChangeListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).childAdded( evt: evt != nil ? NodeChangeEvent( javaObject: evt ) : nil )
}

private typealias NodeChangeListener_childRemoved_1_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject? ) -> ()

private func NodeChangeListener_childRemoved_1( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ evt: jobject? ) -> () {
    NodeChangeListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).childRemoved( evt: evt != nil ? NodeChangeEvent( javaObject: evt ) : nil )
}

fileprivate class NodeChangeListenerLocal_: JNILocalProxy<NodeChangeListener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let NodeChangeListener_childAdded_0_thunk: NodeChangeListener_childAdded_0_type = NodeChangeListener_childAdded_0
        natives.append( JNINativeMethod( name: strdup("__childAdded"), signature: strdup("(JLjava/util/prefs/NodeChangeEvent;)V"), fnPtr: unsafeBitCast( NodeChangeListener_childAdded_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let NodeChangeListener_childRemoved_1_thunk: NodeChangeListener_childRemoved_1_type = NodeChangeListener_childRemoved_1
        natives.append( JNINativeMethod( name: strdup("__childRemoved"), signature: strdup("(JLjava/util/prefs/NodeChangeEvent;)V"), fnPtr: unsafeBitCast( NodeChangeListener_childRemoved_1_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let clazz = JNI.FindClass( proxyClassName() )
        natives.withUnsafeBufferPointer {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr.baseAddress, jint(nativesPtr.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }

        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()

    override open class func proxyClassName() -> String { return "org/swiftjava/java_util/NodeChangeListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension NodeChangeListener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return NodeChangeListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class NodeChangeListenerBase: NodeChangeListener {

    public init() {}

    /// public abstract void java.util.prefs.NodeChangeListener.childAdded(java.util.prefs.NodeChangeEvent)

    open func childAdded( evt: NodeChangeEvent? ) /**/ {
    }


    /// public abstract void java.util.prefs.NodeChangeListener.childRemoved(java.util.prefs.NodeChangeEvent)

    open func childRemoved( evt: NodeChangeEvent? ) /**/ {
    }


}
