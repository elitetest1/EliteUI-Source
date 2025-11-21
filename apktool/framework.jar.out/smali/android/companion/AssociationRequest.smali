.class public final Landroid/companion/AssociationRequest;
.super Ljava/lang/Object;
.source "AssociationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationRequest$Builder;,
        Landroid/companion/AssociationRequest$DeviceProfile;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_PROFILE_APP_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_APP_STREAMING"

.field public static final whitelist DEVICE_PROFILE_AUTOMOTIVE_PROJECTION:Ljava/lang/String; = "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

.field public static final whitelist DEVICE_PROFILE_COMPUTER:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_COMPUTER"

.field public static final whitelist DEVICE_PROFILE_GLASSES:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_GLASSES"

.field public static final whitelist DEVICE_PROFILE_NEARBY_DEVICE_STREAMING:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

.field public static final blacklist DEVICE_PROFILE_VIRTUAL_DEVICE:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

.field public static final whitelist DEVICE_PROFILE_WATCH:Ljava/lang/String; = "android.app.role.COMPANION_DEVICE_WATCH"

.field public static final blacklist DEVICE_PROFILE_WEARABLE_SENSING:Ljava/lang/String; = "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

.field private static final blacklist DISPLAY_NAME_LENGTH_LIMIT:I = 0x400


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private final blacklist mCreationTime:J

.field private final greylist-max-o mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDeviceProfilePrivilegesDescription:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mForceConfirmation:Z

.field private blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSelfManaged:Z

.field private final greylist-max-o mSingleDevice:Z

.field private blacklist mSkipPrompt:Z

.field private final blacklist mSkipRoleGrant:Z

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-class v10, Landroid/companion/DeviceFilter;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-class v11, Landroid/companion/DeviceFilter;

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    and-int/lit8 v10, v2, 0x10

    const/4 v11, 0x0

    if-nez v10, :cond_5

    move-object v10, v11

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    :goto_4
    and-int/lit8 v12, v2, 0x20

    if-nez v12, :cond_6

    move-object v12, v11

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v12

    :goto_5
    and-int/lit8 v13, v2, 0x40

    if-nez v13, :cond_7

    move-object v13, v11

    goto :goto_6

    :cond_7
    sget-object v13, Landroid/companion/AssociatedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/companion/AssociatedDevice;

    :goto_6
    and-int/lit16 v14, v2, 0x80

    if-nez v14, :cond_8

    move-object v14, v11

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_9

    move-object v2, v11

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    :goto_8
    move/from16 v16, v6

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iput-object v9, v0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v11, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v10, v0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iput-object v12, v0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iput-object v13, v0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    move/from16 v3, v16

    iput-boolean v3, v0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iput-boolean v7, v0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iput-boolean v4, v0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    iput-object v14, v0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iput v15, v0, Landroid/companion/AssociationRequest;->mUserId:I

    const-class v3, Landroid/annotation/UserIdInt;

    invoke-static {v3, v11, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V

    iput-object v2, v0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iput-wide v5, v0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iput-boolean v8, v0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, v0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-void

    :cond_a
    iput-object v11, v0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method private constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "ZZZ",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iput-object p3, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iput-object p4, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iput-boolean p6, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iput-boolean p7, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iput-object p8, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;Landroid/companion/AssociationRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZZLandroid/graphics/drawable/Icon;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroid/companion/AssociationRequest;

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    iget v3, p1, Landroid/companion/AssociationRequest;->mUserId:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    iget-wide v4, p1, Landroid/companion/AssociationRequest;->mCreationTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    iget-boolean v3, p1, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-ne v2, v3, :cond_3

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez p0, :cond_2

    iget-object p0, p1, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAssociatedDevice()Landroid/companion/AssociatedDevice;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object p0
.end method

.method public blacklist getCreationTime()J
    .locals 2

    iget-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    return-wide v0
.end method

.method public greylist-max-r getDeviceFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getDeviceIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist getDeviceProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getDeviceProfilePrivilegesDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/companion/AssociationRequest;->mUserId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist isForceConfirmation()Z
    .locals 0

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    return p0
.end method

.method public whitelist isSelfManaged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    return p0
.end method

.method public whitelist isSingleDevice()Z
    .locals 0

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return p0
.end method

.method public blacklist isSkipPrompt()Z
    .locals 0

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return p0
.end method

.method public blacklist isSkipRoleGrant()Z
    .locals 0

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    return p0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-void
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public blacklist setDeviceProfilePrivilegesDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSkipPrompt(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 0

    iput p1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssociationRequest { singleDevice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", deviceFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", associatedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selfManaged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceConfirmation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipRoleGrant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceProfilePrivilegesDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", skipPrompt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSelfManaged:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mForceConfirmation:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipPrompt:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSkipRoleGrant:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfile:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_b
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_c
    iget v0, p0, Landroid/companion/AssociationRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceProfilePrivilegesDescription:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    :cond_d
    iget-wide v0, p0, Landroid/companion/AssociationRequest;->mCreationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/companion/AssociationRequest;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_e
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
