.class public Lcom/samsung/android/knox/util/SemCertByte;
.super Ljava/lang/Object;
.source "SemCertByte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/util/SemCertByte;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field


# instance fields
.field public whitelist caCertBytes:[B

.field public whitelist caSize:I

.field public whitelist certBytes:[B

.field public whitelist certsize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/util/SemCertByte$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/util/SemCertByte$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    return-void
.end method

.method private final blacklist readByteArray(Landroid/os/Parcel;[B)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    array-length p1, p0

    array-length v0, p2

    if-ne p1, v0, :cond_0

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bad array lengths"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    iget p2, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
