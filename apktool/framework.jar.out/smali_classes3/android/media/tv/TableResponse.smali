.class public final Landroid/media/tv/TableResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "TableResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TableResponse$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x2


# instance fields
.field private final blacklist mSize:I

.field private final blacklist mTableByteArray:[B

.field private final blacklist mTableSharedMemory:Landroid/os/SharedMemory;

.field private final blacklist mTableUri:Landroid/net/Uri;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TableResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TableResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput p4, p0, Landroid/media/tv/TableResponse;->mVersion:I

    iput p5, p0, Landroid/media/tv/TableResponse;->mSize:I

    iput-object p6, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    iput-object p7, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    iput-object p8, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;Landroid/media/tv/TableResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/tv/TableResponse;-><init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;)V

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/net/Uri;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput p5, p0, Landroid/media/tv/TableResponse;->mVersion:I

    iput p6, p0, Landroid/media/tv/TableResponse;->mSize:I

    iput-object p4, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    :goto_1
    sget-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;
    .locals 1

    new-instance v0, Landroid/media/tv/TableResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TableResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSize()I
    .locals 0

    iget p0, p0, Landroid/media/tv/TableResponse;->mSize:I

    return p0
.end method

.method public whitelist getTableByteArray()[B
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    return-object p0
.end method

.method public whitelist getTableSharedMemory()Landroid/os/SharedMemory;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method

.method public whitelist getTableUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableByteArray:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p0, p0, Landroid/media/tv/TableResponse;->mTableSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
