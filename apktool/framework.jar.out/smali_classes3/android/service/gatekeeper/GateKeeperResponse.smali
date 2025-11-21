.class public final Landroid/service/gatekeeper/GateKeeperResponse;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/gatekeeper/GateKeeperResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

.field public static final blacklist RESPONSE_ERROR:I = -0x1

.field public static final blacklist RESPONSE_OK:I = 0x0

.field public static final blacklist RESPONSE_RETRY:I = 0x1

.field public static final blacklist RESPONSE_SYSTEM_ERROR:I = -0x64


# instance fields
.field private blacklist mPayload:[B

.field private final blacklist mResponseCode:I

.field private blacklist mShouldReEnroll:Z

.field private blacklist mTimeout:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 0

    invoke-static {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse$1;

    invoke-direct {v0}, Landroid/service/gatekeeper/GateKeeperResponse$1;-><init>()V

    sput-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return-void
.end method

.method public static blacklist createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    invoke-direct {v0, p0}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    return-object v0
.end method

.method public static blacklist createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    iput-object p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    iput-boolean p1, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return-object v0
.end method

.method private static blacklist createRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 2

    new-instance v0, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(I)V

    iput p0, v0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getPayload()[B
    .locals 0

    iget-object p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    return-object p0
.end method

.method public blacklist getResponseCode()I
    .locals 0

    iget p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    return p0
.end method

.method public blacklist getShouldReEnroll()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    return p0
.end method

.method public blacklist getTimeout()I
    .locals 0

    iget p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mResponseCode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mTimeout:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mShouldReEnroll:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/gatekeeper/GateKeeperResponse;->mPayload:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return-void
.end method
