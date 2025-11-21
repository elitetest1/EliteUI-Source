.class public final Landroid/content/rollback/PackageRollbackInfo;
.super Ljava/lang/Object;
.source "PackageRollbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsApex:Z

.field private final blacklist mIsApkInApex:Z

.field private final blacklist mPendingBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingRestores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackDataPolicy:I

.field private final blacklist mSnapshottedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

.field private final blacklist mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/rollback/PackageRollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/PackageRollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/VersionedPackage;",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    iput-object p2, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    iput-object p3, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    iput-object p4, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    iput-boolean p5, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    iput p8, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    iput-boolean p6, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    iput-object p7, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    iput-object p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/rollback/PackageRollbackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addPendingBackup(I)V
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPendingBackups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getPendingRestores()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
    .locals 2

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    iget v1, v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRollbackDataPolicy()I
    .locals 0

    iget p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mRollbackDataPolicy:I

    return p0
.end method

.method public blacklist getSnapshottedUsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mSnapshottedUsers:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    return-object p0
.end method

.method public whitelist getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    return-object p0
.end method

.method public whitelist isApex()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    return p0
.end method

.method public whitelist isApkInApex()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    return p0
.end method

.method public blacklist removePendingBackup(I)V
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingBackups:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist removePendingRestoreInfo(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    return-void
.end method

.method public blacklist removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mPendingRestores:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackFrom:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/rollback/PackageRollbackInfo;->mVersionRolledBackTo:Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/VersionedPackage;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApex:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/content/rollback/PackageRollbackInfo;->mIsApkInApex:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
