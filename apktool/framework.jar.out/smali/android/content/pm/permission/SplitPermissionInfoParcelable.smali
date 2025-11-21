.class public Landroid/content/pm/permission/SplitPermissionInfoParcelable;
.super Ljava/lang/Object;
.source "SplitPermissionInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNewPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSplitPermission:Ljava/lang/String;

.field private final blacklist mTargetSdk:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;

    invoke-direct {v0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable$1;-><init>()V

    sput-object v0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    const-class p1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v4, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    const-class v2, Landroid/annotation/IntRange;

    const-string v5, "from"

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    invoke-direct {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->onConstructed()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p3, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    const-class v2, Landroid/annotation/IntRange;

    const-string v5, "from"

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move v4, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    invoke-direct {p0}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist onConstructed()V
    .locals 1

    iget-object p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    const-string/jumbo v0, "newPermissions"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

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
    check-cast p1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    iget-object v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    iget-object v3, p1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    iget p1, p1, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getNewPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSplitPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getTargetSdk()I
    .locals 0

    iget p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mSplitPermission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mNewPermissions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget p0, p0, Landroid/content/pm/permission/SplitPermissionInfoParcelable;->mTargetSdk:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
