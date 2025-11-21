.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0x11

.field static final blacklist TRANSACTION_cancelDraw:I = 0x2f

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x2e

.field static final blacklist TRANSACTION_clearTspDeadzone:I = 0x33

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0x12

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0x13

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0xf

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0x9

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x1f

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x2c

.field static final blacklist TRANSACTION_getDragDeviceId:I = 0xe

.field static final blacklist TRANSACTION_getDragPointerId:I = 0xd

.field static final blacklist TRANSACTION_getDragStateInputToken:I = 0xc

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x1c

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x2b

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x26

.field static final blacklist TRANSACTION_grantInputChannelWithTaskToken:I = 0x27

.field static final blacklist TRANSACTION_moveFocusToAdjacentWindow:I = 0x30

.field static final blacklist TRANSACTION_notifyImeWindowVisibilityChangedFromClient:I = 0x31

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x1b

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x7

.field static final blacklist TRANSACTION_performClipDataUpdate:I = 0x35

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xa

.field static final blacklist TRANSACTION_performDragWithArea:I = 0xb

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x1d

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final blacklist TRANSACTION_relayoutAsync:I = 0x6

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final blacklist TRANSACTION_removeWithTaskToken:I = 0x28

.field static final blacklist TRANSACTION_reportDecorViewGestureInterceptionChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0x10

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x25

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x19

.field static final greylist-max-o TRANSACTION_setInsets:I = 0x8

.field static final blacklist TRANSACTION_setKeyguardWallpaperTouchAllowed:I = 0x36

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2d

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x16

.field static final blacklist TRANSACTION_setTspDeadzone:I = 0x32

.field static final blacklist TRANSACTION_setTspNoteMode:I = 0x34

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x18

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x14

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x15

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x1e

.field static final blacklist TRANSACTION_updateAnimatingTypes:I = 0x22

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x29

.field static final blacklist TRANSACTION_updateInputChannelWithPointerRegion:I = 0x2a

.field static final blacklist TRANSACTION_updateRequestedVisibleTypes:I = 0x21

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x20

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x1a

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IWindowSession;

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "setKeyguardWallpaperTouchAllowed"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "performClipDataUpdate"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "setTspNoteMode"

    return-object p0

    :pswitch_3
    const-string p0, "clearTspDeadzone"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "setTspDeadzone"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "notifyImeWindowVisibilityChangedFromClient"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "moveFocusToAdjacentWindow"

    return-object p0

    :pswitch_7
    const-string p0, "cancelDraw"

    return-object p0

    :pswitch_8
    const-string p0, "clearTouchableRegion"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setOnBackInvokedCallbackInfo"

    return-object p0

    :pswitch_a
    const-string p0, "generateDisplayHash"

    return-object p0

    :pswitch_b
    const-string p0, "grantEmbeddedWindowFocus"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "updateInputChannelWithPointerRegion"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "updateInputChannel"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "removeWithTaskToken"

    return-object p0

    :pswitch_f
    const-string p0, "grantInputChannelWithTaskToken"

    return-object p0

    :pswitch_10
    const-string p0, "grantInputChannel"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "reportKeepClearAreasChanged"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "reportDecorViewGestureInterceptionChanged"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "reportSystemGestureExclusionChanged"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "updateAnimatingTypes"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "updateRequestedVisibleTypes"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "updateTapExcludeRegion"

    return-object p0

    :pswitch_17
    const-string p0, "finishMovingTask"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "startMovingTask"

    return-object p0

    :pswitch_19
    const-string/jumbo p0, "pokeDrawLock"

    return-object p0

    :pswitch_1a
    const-string p0, "getWindowId"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "onRectangleOnScreenRequested"

    return-object p0

    :pswitch_1c
    const-string/jumbo p0, "wallpaperCommandComplete"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "sendWallpaperCommand"

    return-object p0

    :pswitch_1e
    const-string/jumbo p0, "setWallpaperDisplayOffset"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "wallpaperOffsetsComplete"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "setShouldZoomOutWallpaper"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "setWallpaperZoomOut"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "setWallpaperPosition"

    return-object p0

    :pswitch_23
    const-string p0, "dragRecipientExited"

    return-object p0

    :pswitch_24
    const-string p0, "dragRecipientEntered"

    return-object p0

    :pswitch_25
    const-string p0, "cancelDragAndDrop"

    return-object p0

    :pswitch_26
    const-string/jumbo p0, "reportDropResult"

    return-object p0

    :pswitch_27
    const-string p0, "dropForAccessibility"

    return-object p0

    :pswitch_28
    const-string p0, "getDragDeviceId"

    return-object p0

    :pswitch_29
    const-string p0, "getDragPointerId"

    return-object p0

    :pswitch_2a
    const-string p0, "getDragStateInputToken"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "performDragWithArea"

    return-object p0

    :pswitch_2c
    const-string/jumbo p0, "performDrag"

    return-object p0

    :pswitch_2d
    const-string p0, "finishDrawing"

    return-object p0

    :pswitch_2e
    const-string/jumbo p0, "setInsets"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "outOfMemory"

    return-object p0

    :pswitch_30
    const-string/jumbo p0, "relayoutAsync"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "relayout"

    return-object p0

    :pswitch_32
    const-string/jumbo p0, "remove"

    return-object p0

    :pswitch_33
    const-string p0, "addToDisplayWithoutInputChannel"

    return-object p0

    :pswitch_34
    const-string p0, "addToDisplayAsUser"

    return-object p0

    :pswitch_35
    const-string p0, "addToDisplay"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    const-string v3, "android.view.IWindowSession"

    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_1
    const/4 v3, 0x0

    const-string v4, "Array too large: "

    const v5, 0xf4240

    packed-switch v1, :pswitch_data_0

    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->setKeyguardWallpaperTouchAllowed(Landroid/view/IWindow;Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->performClipDataUpdate(Landroid/content/ClipData;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->setTspNoteMode(Landroid/view/IWindow;Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->clearTspDeadzone(Landroid/view/IWindow;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDraw(Landroid/view/IWindow;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/OnBackInvokedCallbackInfo;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/InputTransferToken;

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    move v5, v3

    move-object v3, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v8, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Region;

    sget-object v10, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v2, v7

    move-object v7, v8

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v7, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->removeWithTaskToken(Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    move v11, v9

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v5, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/InputTransferToken;

    move-object v6, v4

    move-object v4, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v7, v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v8, v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v10, v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move v11, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    sget-object v12, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/window/InputTransferToken;

    move v13, v11

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v14, v10

    move-object v10, v12

    new-instance v12, Landroid/view/InputChannel;

    invoke-direct {v12}, Landroid/view/InputChannel;-><init>()V

    move/from16 v16, v13

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, v14

    move-object v14, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindowSession$Stub;->grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    invoke-virtual {v15, v12, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_10
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    sget-object v4, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/InputTransferToken;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    sget-object v10, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/InputTransferToken;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/view/InputChannel;

    invoke-direct {v12}, Landroid/view/InputChannel;-><init>()V

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v12, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_11
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_12
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V

    goto/16 :goto_1

    :pswitch_13
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_14
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_1

    :pswitch_15
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_1

    :pswitch_16
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    goto/16 :goto_1

    :pswitch_17
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    goto/16 :goto_1

    :pswitch_18
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_19
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1a
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_1b
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :pswitch_1c
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v3}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_1d
    move v14, v9

    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object v5, v4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object v6, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v8, v2

    move-object v2, v6

    move-object v6, v7

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto/16 :goto_1

    :pswitch_1e
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    goto/16 :goto_1

    :pswitch_1f
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    goto/16 :goto_1

    :pswitch_20
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    goto/16 :goto_1

    :pswitch_21
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    goto/16 :goto_1

    :pswitch_22
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    goto/16 :goto_1

    :pswitch_23
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    goto/16 :goto_1

    :pswitch_24
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    goto/16 :goto_1

    :pswitch_25
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    goto :goto_1

    :pswitch_26
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    goto :goto_1

    :pswitch_27
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_28
    move v14, v9

    invoke-virtual {v0}, Landroid/view/IWindowSession$Stub;->getDragDeviceId()I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_29
    move v14, v9

    invoke-virtual {v0}, Landroid/view/IWindowSession$Stub;->getDragPointerId()I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_2a
    move v14, v9

    invoke-virtual {v0}, Landroid/view/IWindowSession$Stub;->getDragStateInputToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_1
    move v11, v14

    goto/16 :goto_6

    :pswitch_2b
    move-object v8, v2

    move v14, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    move v10, v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    move v11, v10

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    sget-object v12, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ClipData;

    sget-object v13, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    sget-object v14, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v8, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-virtual/range {v0 .. v13}, Landroid/view/IWindowSession$Stub;->performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_2

    :pswitch_2c
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    sget-object v11, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipData;

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v8, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_2

    :pswitch_2d
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v2, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    goto/16 :goto_2

    :pswitch_2e
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Region;

    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :pswitch_2f
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    invoke-virtual {v8}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_2

    :pswitch_30
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v9, v8

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v9}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    goto :goto_2

    :pswitch_31
    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, v9

    new-instance v9, Landroid/view/WindowRelayoutResult;

    invoke-direct {v9}, Landroid/view/WindowRelayoutResult;-><init>()V

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v15, v9, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_6

    :pswitch_32
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v2}, Landroid/view/IWindowSession$Stub;->remove(Landroid/os/IBinder;)V

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    const/4 v11, 0x1

    goto/16 :goto_6

    :pswitch_33
    move-object v1, v0

    move-object v0, v2

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v2

    sget-object v6, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    move-object v7, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object v8, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v9, Landroid/view/InsetsState;

    invoke-direct {v9}, Landroid/view/InsetsState;-><init>()V

    move-object v1, v2

    move-object v2, v6

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-gt v10, v5, :cond_3

    if-gez v10, :cond_2

    goto :goto_3

    :cond_2
    new-array v5, v10, [F

    move-object v7, v5

    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v5, v9

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v15, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34
    move-object v0, v2

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v9, v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v10, v7

    new-instance v7, Landroid/view/InputChannel;

    invoke-direct {v7}, Landroid/view/InputChannel;-><init>()V

    move-object v11, v8

    new-instance v8, Landroid/view/InsetsState;

    invoke-direct {v8}, Landroid/view/InsetsState;-><init>()V

    move v12, v9

    new-instance v9, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v9}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v13, v10

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gt v14, v5, :cond_5

    if-gez v14, :cond_4

    move-object v11, v13

    goto :goto_4

    :cond_4
    new-array v5, v14, [F

    move-object v11, v5

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v5, v12

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    invoke-virtual {v15, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v8, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v9, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v10, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_2

    :cond_5
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_35
    move-object v0, v2

    move-object v13, v3

    move-object v11, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move v7, v6

    new-instance v6, Landroid/view/InputChannel;

    invoke-direct {v6}, Landroid/view/InputChannel;-><init>()V

    move v8, v7

    new-instance v7, Landroid/view/InsetsState;

    invoke-direct {v7}, Landroid/view/InsetsState;-><init>()V

    move v9, v8

    new-instance v8, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v8}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move v10, v9

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gt v12, v5, :cond_7

    if-gez v12, :cond_6

    goto :goto_5

    :cond_6
    new-array v5, v12, [F

    move-object v13, v5

    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v5, v10

    move-object v10, v13

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual {v15}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v15, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v7, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v8, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v9, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeFloatArray([F)V

    :goto_6
    return v11

    :cond_7
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
