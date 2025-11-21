.class public final Landroid/hardware/input/HostUsiVersion;
.super Ljava/lang/Object;
.source "HostUsiVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/HostUsiVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMajorVersion:I

.field private final blacklist mMinorVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/HostUsiVersion$1;

    invoke-direct {v0}, Landroid/hardware/input/HostUsiVersion$1;-><init>()V

    sput-object v0, Landroid/hardware/input/HostUsiVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    iput p2, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    iput p1, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

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

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/input/HostUsiVersion;

    iget v2, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    iget v3, p1, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    iget p1, p1, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getMajorVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    return p0
.end method

.method public whitelist getMinorVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    iget v0, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    if-ltz v0, :cond_0

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HostUsiVersion { majorVersion = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/hardware/input/HostUsiVersion;->mMajorVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/hardware/input/HostUsiVersion;->mMinorVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
