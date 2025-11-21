.class public final Landroid/service/displayhash/DisplayHashParams;
.super Ljava/lang/Object;
.source "DisplayHashParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/DisplayHashParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/displayhash/DisplayHashParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBufferSize:Landroid/util/Size;

.field private final blacklist mGrayscaleBuffer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/displayhash/DisplayHashParams$1;

    invoke-direct {v0}, Landroid/service/displayhash/DisplayHashParams$1;-><init>()V

    sput-object v0, Landroid/service/displayhash/DisplayHashParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    iput-boolean v1, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/Size;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    iput-boolean p2, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getBufferSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    return-object p0
.end method

.method public whitelist isGrayscaleBuffer()Z
    .locals 0

    iget-boolean p0, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayHashParams { bufferSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", grayscaleBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean p2, p0, Landroid/service/displayhash/DisplayHashParams;->mGrayscaleBuffer:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Landroid/service/displayhash/DisplayHashParams;->mBufferSize:Landroid/util/Size;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    :cond_2
    return-void
.end method
