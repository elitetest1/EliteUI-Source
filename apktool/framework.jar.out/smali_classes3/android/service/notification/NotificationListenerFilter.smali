.class public Landroid/service/notification/NotificationListenerFilter;
.super Ljava/lang/Object;
.source "NotificationListenerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationListenerFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_TYPES:I = 0xf


# instance fields
.field private blacklist mAllowedNotificationTypes:I

.field private blacklist mDisallowedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationListenerFilter$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerFilter$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    iput-object p2, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public blacklist addPackage(Landroid/content/pm/VersionedPackage;)V
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist areAllTypesAllowed()Z
    .locals 1

    const/16 v0, 0xf

    iget p0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDisallowedPackages()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method public blacklist getTypes()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    return p0
.end method

.method public blacklist isPackageAllowed(Landroid/content/pm/VersionedPackage;)Z
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist isTypeAllowed(I)Z
    .locals 0

    iget p0, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist removePackage(Landroid/content/pm/VersionedPackage;)V
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setDisallowedPackages(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public blacklist setTypes(I)V
    .locals 0

    iput p1, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/notification/NotificationListenerFilter;->mAllowedNotificationTypes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/notification/NotificationListenerFilter;->mDisallowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method
