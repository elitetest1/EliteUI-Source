.class public final Landroid/content/pm/InstantAppRequestInfo;
.super Ljava/lang/Object;
.source "InstantAppRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHostDigestPrefix:[I

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mRequesterInstantApp:Z

.field private final blacklist mToken:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstantAppRequestInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppRequestInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;[ILandroid/os/UserHandle;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    iput-object p3, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean p4, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    iput-object p5, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    :goto_1
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object v2, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    iput-object v4, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    iput-object p1, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v3, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

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

.method public whitelist getHostDigestPrefix()[I
    .locals 0

    iget-object p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    return-object p0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public whitelist isRequesterInstantApp()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mRequesterInstantApp:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mHostDigestPrefix:[I

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_2
    iget-object v0, p0, Landroid/content/pm/InstantAppRequestInfo;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/content/pm/InstantAppRequestInfo;->mToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
