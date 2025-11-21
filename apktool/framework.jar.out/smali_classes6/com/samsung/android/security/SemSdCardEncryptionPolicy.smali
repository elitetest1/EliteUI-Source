.class public final Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
.super Ljava/lang/Object;
.source "SemSdCardEncryptionPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/security/SemSdCardEncryptionPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mCurrentUUID:Ljava/lang/String;

.field private blacklist mEnc:I

.field public blacklist mEncryptState:I

.field public blacklist mIsPolicy:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->init()V

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iput p2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iput-object p3, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 1

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0, p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static blacklist unflattenFromString(ILjava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    const/4 p1, 0x3

    :goto_0
    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method public static blacklist writeToParcel(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;
    .locals 3

    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->clone()Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public blacklist compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->compareTo(Lcom/samsung/android/security/SemSdCardEncryptionPolicy;)I

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    iget v1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    iget v2, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    iget p1, p1, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public blacklist getCurrentUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEncryptState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    return p0
.end method

.method public blacklist getEncryptionState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEnc:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    return-void
.end method

.method public blacklist isAdminPolicyEnabled()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setIsPolicy(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mEncryptState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mCurrentUUID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
