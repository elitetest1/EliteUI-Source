.class public final Landroid/content/pm/PackageInstaller$InstallConstraints;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallConstraints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;


# instance fields
.field private final blacklist mAppNotForegroundRequired:Z

.field private final blacklist mAppNotInteractingRequired:Z

.field private final blacklist mAppNotTopVisibleRequired:Z

.field private final blacklist mDeviceIdleRequired:Z

.field private final blacklist mNotInCallRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->build()Landroid/content/pm/PackageInstaller$InstallConstraints;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;

    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    iput-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    iput-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    iput-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    return-void
.end method

.method public constructor blacklist <init>(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    iput-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    iput-boolean p3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    iput-boolean p4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    iput-boolean p5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

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
    check-cast p1, Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-ne v2, v3, :cond_2

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist isAppNotForegroundRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    return p0
.end method

.method public whitelist isAppNotInteractingRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    return p0
.end method

.method public whitelist isAppNotTopVisibleRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    return p0
.end method

.method public whitelist isDeviceIdleRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    return p0
.end method

.method public whitelist isNotInCallRequired()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-eqz v0, :cond_1

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    :cond_1
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-eqz v0, :cond_2

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    :cond_2
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-eqz v0, :cond_3

    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    :cond_3
    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-eqz p0, :cond_4

    or-int/lit8 p0, p2, 0x10

    int-to-byte p2, p0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
