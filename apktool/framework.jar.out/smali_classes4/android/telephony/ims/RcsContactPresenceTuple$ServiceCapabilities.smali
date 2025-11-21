.class public final Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;,
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$DuplexMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUPLEX_MODE_FULL:Ljava/lang/String; = "full"

.field public static final whitelist DUPLEX_MODE_HALF:Ljava/lang/String; = "half"

.field public static final whitelist DUPLEX_MODE_RECEIVE_ONLY:Ljava/lang/String; = "receive-only"

.field public static final whitelist DUPLEX_MODE_SEND_ONLY:Ljava/lang/String; = "send-only"


# instance fields
.field private final blacklist mIsAudioCapable:Z

.field private final blacklist mIsVideoCapable:Z

.field private final blacklist mSupportedDuplexModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnsupportedDuplexModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnsupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    iput-boolean p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    iput-boolean p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSupportedDuplexModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getUnsupportedDuplexModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist isAudioCapable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    return p0
.end method

.method public whitelist isVideoCapable()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "servCaps{a="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unsupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
