.class public final Landroid/view/displayhash/DisplayHash;
.super Ljava/lang/Object;
.source "DisplayHash.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/displayhash/DisplayHash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private final blacklist mHashAlgorithm:Ljava/lang/String;

.field private final blacklist mHmac:[B

.field private final blacklist mImageHash:[B

.field private final blacklist mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/displayhash/DisplayHash$1;

    invoke-direct {v0}, Landroid/view/displayhash/DisplayHash$1;-><init>()V

    sput-object v0, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JLandroid/graphics/Rect;Ljava/lang/String;[B[B)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    iput-object p3, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const-class p1, Landroid/annotation/NonNull;

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, p2, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p5, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, p2, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, p2, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object v0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v4, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/displayhash/DisplayHash-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/displayhash/DisplayHash;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist byteArrayToString([B)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string p0, "[]"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_2

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getBoundsInWindow()Landroid/graphics/Rect;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist getHashAlgorithm()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getHmac()[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    return-object p0
.end method

.method public whitelist getImageHash()[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    return-object p0
.end method

.method public whitelist getTimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayHash { timeMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashAlgorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    invoke-direct {p0, v1}, Landroid/view/displayhash/DisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hmac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    invoke-direct {p0, v1}, Landroid/view/displayhash/DisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/view/displayhash/DisplayHash;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/displayhash/DisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/view/displayhash/DisplayHash;->mImageHash:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Landroid/view/displayhash/DisplayHash;->mHmac:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
