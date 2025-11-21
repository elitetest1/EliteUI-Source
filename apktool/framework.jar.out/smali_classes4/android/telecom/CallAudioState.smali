.class public final Landroid/telecom/CallAudioState;
.super Ljava/lang/Object;
.source "CallAudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAudioState$CallAudioRoute;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallAudioState;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_ALL:I = 0x1f

.field public static final whitelist ROUTE_BLUETOOTH:I = 0x2

.field public static final whitelist ROUTE_EARPIECE:I = 0x1

.field public static final whitelist ROUTE_SPEAKER:I = 0x8

.field public static final whitelist ROUTE_STREAMING:I = 0x10

.field public static final whitelist ROUTE_WIRED_HEADSET:I = 0x4

.field public static final whitelist ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final greylist-max-o activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final greylist-max-o isMuted:Z

.field private final greylist-max-o route:I

.field private final greylist-max-o supportedBluetoothDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o supportedRouteMask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/CallAudioState$1;

    invoke-direct {v0}, Landroid/telecom/CallAudioState$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telecom/AudioState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result p1

    iput p1, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telecom/CallAudioState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    iget-object v0, p1, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    return-void
.end method

.method public constructor whitelist <init>(ZII)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/telecom/CallAudioState;-><init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor blacklist <init>(ZIILandroid/bluetooth/BluetoothDevice;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    iput p2, p0, Landroid/telecom/CallAudioState;->route:I

    iput p3, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    iput-object p4, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p5, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    return-void
.end method

.method public static whitelist audioRouteToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_6

    and-int/lit8 v0, p0, -0x20

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    const/16 v1, 0x10

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    const-string p0, "STREAMING"

    invoke-static {v0, p0}, Landroid/telecom/CallAudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static greylist-max-o listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telecom/CallAudioState;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/telecom/CallAudioState;

    iget-object v1, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p1, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p1, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_4
    iget-object v1, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p1, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p0

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public whitelist getActiveBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public blacklist getRawSupportedRouteMask()I
    .locals 0

    iget p0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return p0
.end method

.method public whitelist getRoute()I
    .locals 0

    iget p0, p0, Landroid/telecom/CallAudioState;->route:I

    return p0
.end method

.method public whitelist getSupportedBluetoothDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    return-object p0
.end method

.method public whitelist getSupportedRouteMask()I
    .locals 2

    iget v0, p0, Landroid/telecom/CallAudioState;->route:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    return p0
.end method

.method public whitelist isMuted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallAudioState$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telecom/CallAudioState$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-boolean v2, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-static {v3}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    invoke-static {v4}, Landroid/telecom/CallAudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    filled-new-array {v2, v3, v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s, activeBluetoothDevice: [%s], supportedBluetoothDevices: [%s]]"

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean p2, p0, Landroid/telecom/CallAudioState;->isMuted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/telecom/CallAudioState;->route:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telecom/CallAudioState;->supportedRouteMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/CallAudioState;->activeBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/telecom/CallAudioState;->supportedBluetoothDevices:Ljava/util/Collection;

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
