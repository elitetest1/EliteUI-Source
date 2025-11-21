.class public final Landroid/content/pm/LauncherUserInfo;
.super Ljava/lang/Object;
.source "LauncherUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherUserInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIVATE_SPACE_ENTRYPOINT_HIDDEN:Ljava/lang/String; = "private_space_entrypoint_hidden"


# instance fields
.field private final blacklist mUserConfig:Landroid/os/Bundle;

.field private final blacklist mUserSerialNumber:I

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/LauncherUserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherUserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherUserInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    iput-object p3, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/pm/LauncherUserInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/LauncherUserInfo;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getUserConfig()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getUserSerialNumber()I
    .locals 0

    iget p0, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    return p0
.end method

.method public whitelist getUserType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
