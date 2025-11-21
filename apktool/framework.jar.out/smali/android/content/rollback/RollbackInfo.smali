.class public final Landroid/content/rollback/RollbackInfo;
.super Ljava/lang/Object;
.source "RollbackInfo.java"

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
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCausePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommittedSessionId:I

.field private final blacklist mIsStaged:Z

.field private final blacklist mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRollbackId:I

.field private blacklist mRollbackImpactLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/rollback/RollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/RollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/RollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;ZLjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;II)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;ZLjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    iput-object p2, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    iput-boolean p3, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    iput-object p4, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    iput p5, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    iput p6, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    sget-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/rollback/RollbackInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/rollback/RollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCausePackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getCommittedSessionId()I
    .locals 0

    iget p0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return p0
.end method

.method public whitelist getPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getRollbackId()I
    .locals 0

    iget p0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    return p0
.end method

.method public whitelist getRollbackImpactLevel()I
    .locals 0

    iget p0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    return p0
.end method

.method public whitelist isStaged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    return p0
.end method

.method public blacklist setCommittedSessionId(I)V
    .locals 0

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return-void
.end method

.method public blacklist setRollbackImpactLevel(I)V
    .locals 0

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackImpactLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
