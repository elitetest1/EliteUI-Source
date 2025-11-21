.class public final Landroid/hardware/display/SemWifiDisplayConfig;
.super Ljava/lang/Object;
.source "SemWifiDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/SemWifiDisplayConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_TYPE_AP:I = 0x2

.field public static final whitelist CONNECTION_TYPE_P2P:I = 0x1

.field public static final whitelist CONNECTION_TYPE_USB:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplayConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_INITIATE_MIRRORING:I = 0x20

.field public static final whitelist FLAG_PIN_CONNECT:I = 0x2000

.field public static final blacklist FLAG_SKIP_PIN_NUMBER_CONFIRM:I = 0x4000

.field public static final whitelist MODE_DEX_ON_PC:I = 0x3

.field public static final whitelist MODE_NORMAL_MIRRORING:I = 0x0

.field public static final whitelist MODE_WATCH_CAMERA:I = 0x1

.field public static final whitelist MODE_WIRELESS_DEX:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiDisplayConfig"


# instance fields
.field private blacklist mConnectionType:I

.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mFlags:I

.field private blacklist mIpAddress:Ljava/lang/String;

.field private blacklist mMode:I

.field private blacklist mP2pMacAddress:Ljava/lang/String;

.field private blacklist mPort:Ljava/lang/String;

.field private blacklist mPrameterGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$2;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayConfig$2;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance v1, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v1, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    iput-object p5, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string p2, "connection-type"

    iget p3, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-direct {p1, p2, p3}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string p2, "initparams"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v0, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v3, "initparams"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v0, "getparams"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string p1, "setparams"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance v2, Landroid/hardware/display/SemWifiDisplayConfig$1;

    invoke-direct {v2, p0}, Landroid/hardware/display/SemWifiDisplayConfig$1;-><init>(Landroid/hardware/display/SemWifiDisplayConfig;)V

    iput-object v2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    iput v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    iput v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v0, "connection-type"

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-direct {p1, v0, v1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v0, "initparams"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist addFlags(I)V
    .locals 1

    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    return-void
.end method

.method public whitelist addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist addParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getConnectionType()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    return p0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getFlags()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    return p0
.end method

.method public whitelist getIpAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getJasonArrayParameters(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v2, "initparams"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist getMode()I
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    return p0
.end method

.method public whitelist getP2pMacAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/display/SemWifiDisplayParameter;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public whitelist getPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isInitiateMirroringMode()Z
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPinRequest()Z
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSkipPinNumberConfirm()Z
    .locals 0

    iget p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist removeParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public whitelist setMode(I)V
    .locals 2

    iput p1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    new-instance p1, Landroid/hardware/display/SemWifiDisplayParameter;

    const-string v0, "mode"

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-direct {p1, v0, v1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;I)V

    const-string v0, "initparams"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;->addParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemWifiDisplayConfig:: p2pMacAddr = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ipAddr = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", connectionType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", flags = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initParams = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v2, "initparams"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", getParams = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v2, "getparams"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", setParams = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v0, "setparams"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mConnectionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v0, "initparams"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string v0, "getparams"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/hardware/display/SemWifiDisplayConfig;->mPrameterGroups:Ljava/util/HashMap;

    const-string p2, "setparams"

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
