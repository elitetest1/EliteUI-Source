.class public final Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
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
    name = "InstallConstraintsResult"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$InstallConstraintsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllConstraintsSatisfied:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist areAllConstraintsSatisfied()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    int-to-byte p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
