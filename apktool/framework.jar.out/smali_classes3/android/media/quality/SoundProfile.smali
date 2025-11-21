.class public final Landroid/media/quality/SoundProfile;
.super Ljava/lang/Object;
.source "SoundProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/SoundProfile$Builder;,
        Landroid/media/quality/SoundProfile$ErrorCode;,
        Landroid/media/quality/SoundProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_DUPLICATE:I = 0x2

.field public static final whitelist ERROR_INVALID_ARGUMENT:I = 0x3

.field public static final whitelist ERROR_NOT_ALLOWLISTED:I = 0x4

.field public static final whitelist ERROR_NO_PERMISSION:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_APPLICATION:I = 0x2

.field public static final whitelist TYPE_SYSTEM:I = 0x1


# instance fields
.field private final blacklist mHandle:Landroid/media/quality/SoundProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mParams:Landroid/os/PersistableBundle;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/quality/SoundProfile$1;

    invoke-direct {v0}, Landroid/media/quality/SoundProfile$1;-><init>()V

    sput-object v0, Landroid/media/quality/SoundProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/SoundProfile;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    const-class v0, Landroid/media/quality/SoundProfileHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/quality/SoundProfileHandle;

    iput-object p1, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/SoundProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/SoundProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/media/quality/SoundProfile;->mType:I

    iput-object p3, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    iput-object p7, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getHandle()Landroid/media/quality/SoundProfileHandle;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    return-object p0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getParameters()Landroid/os/PersistableBundle;
    .locals 1

    new-instance v0, Landroid/os/PersistableBundle;

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist getProfileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getProfileType()I
    .locals 0

    iget p0, p0, Landroid/media/quality/SoundProfile;->mType:I

    return p0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/quality/SoundProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/quality/SoundProfile;->mParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object p0, p0, Landroid/media/quality/SoundProfile;->mHandle:Landroid/media/quality/SoundProfileHandle;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
