.class public final Landroid/media/AudioHalVersionInfo;
.super Ljava/lang/Object;
.source "AudioHalVersionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioHalVersionInfo$AudioHalType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/media/AudioHalVersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist AIDL_1_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist AUDIO_HAL_TYPE_AIDL:I = 0x1

.field public static final blacklist AUDIO_HAL_TYPE_HIDL:I = 0x0

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioHalVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIDL_2_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist HIDL_4_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist HIDL_5_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist HIDL_6_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist HIDL_7_0:Landroid/media/AudioHalVersionInfo;

.field public static final blacklist HIDL_7_1:Landroid/media/AudioHalVersionInfo;

.field private static final blacklist TAG:Ljava/lang/String; = "AudioHalVersionInfo"

.field public static final blacklist VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioHalVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHalVersion:Landroid/media/AudioHalVersion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v0, Landroid/media/AudioHalVersionInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v0, Landroid/media/AudioHalVersionInfo;->AIDL_1_0:Landroid/media/AudioHalVersionInfo;

    new-instance v3, Landroid/media/AudioHalVersionInfo;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v4, v1}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v3, Landroid/media/AudioHalVersionInfo;->HIDL_7_1:Landroid/media/AudioHalVersionInfo;

    new-instance v1, Landroid/media/AudioHalVersionInfo;

    invoke-direct {v1, v2, v4, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v1, Landroid/media/AudioHalVersionInfo;->HIDL_7_0:Landroid/media/AudioHalVersionInfo;

    new-instance v4, Landroid/media/AudioHalVersionInfo;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v5, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v4, Landroid/media/AudioHalVersionInfo;->HIDL_6_0:Landroid/media/AudioHalVersionInfo;

    new-instance v5, Landroid/media/AudioHalVersionInfo;

    const/4 v6, 0x5

    invoke-direct {v5, v2, v6, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v5, Landroid/media/AudioHalVersionInfo;->HIDL_5_0:Landroid/media/AudioHalVersionInfo;

    new-instance v5, Landroid/media/AudioHalVersionInfo;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v6, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v5, Landroid/media/AudioHalVersionInfo;->HIDL_4_0:Landroid/media/AudioHalVersionInfo;

    new-instance v5, Landroid/media/AudioHalVersionInfo;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6, v2}, Landroid/media/AudioHalVersionInfo;-><init>(III)V

    sput-object v5, Landroid/media/AudioHalVersionInfo;->HIDL_2_0:Landroid/media/AudioHalVersionInfo;

    invoke-static {v0, v3, v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/media/AudioHalVersionInfo;->VERSIONS:Ljava/util/List;

    new-instance v0, Landroid/media/AudioHalVersionInfo$1;

    invoke-direct {v0}, Landroid/media/AudioHalVersionInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioHalVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioHalVersion;

    invoke-direct {v0}, Landroid/media/AudioHalVersion;-><init>()V

    iput-object v0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iput p1, v0, Landroid/media/AudioHalVersion;->type:I

    iget-object p1, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iput p2, p1, Landroid/media/AudioHalVersion;->major:I

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iput p3, p0, Landroid/media/AudioHalVersion;->minor:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioHalVersion;

    invoke-direct {v0}, Landroid/media/AudioHalVersion;-><init>()V

    iput-object v0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    sget-object v0, Landroid/media/AudioHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioHalVersion;

    iput-object p1, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioHalVersionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioHalVersionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist toString(III)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/media/AudioHalVersionInfo;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "HIDL"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "AIDL"

    return-object p0

    :cond_1
    const-string p0, "INVALID"

    return-object p0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/media/AudioHalVersionInfo;)I
    .locals 1

    sget-object v0, Landroid/media/AudioHalVersionInfo;->VERSIONS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    sub-int/2addr p0, p1

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

    check-cast p1, Landroid/media/AudioHalVersionInfo;

    invoke-virtual {p0, p1}, Landroid/media/AudioHalVersionInfo;->compareTo(Landroid/media/AudioHalVersionInfo;)I

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getHalType()I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget p0, p0, Landroid/media/AudioHalVersion;->type:I

    return p0
.end method

.method public blacklist getMajorVersion()I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget p0, p0, Landroid/media/AudioHalVersion;->major:I

    return p0
.end method

.method public blacklist getMinorVersion()I
    .locals 0

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget p0, p0, Landroid/media/AudioHalVersion;->minor:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget v0, v0, Landroid/media/AudioHalVersion;->type:I

    iget-object v1, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget v1, v1, Landroid/media/AudioHalVersion;->major:I

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    iget p0, p0, Landroid/media/AudioHalVersion;->minor:I

    invoke-static {v0, v1, p0}, Landroid/media/AudioHalVersionInfo;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/media/AudioHalVersionInfo;->mHalVersion:Landroid/media/AudioHalVersion;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
