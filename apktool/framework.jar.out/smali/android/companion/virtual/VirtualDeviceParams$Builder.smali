.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    }
.end annotation


# static fields
.field private static final blacklist INFINITE_TIMEOUT:Ljava/time/Duration;


# instance fields
.field private blacklist mActivityPolicyExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAudioPlaybackSessionId:I

.field private blacklist mAudioRecordingSessionId:I

.field private blacklist mCrossTaskNavigationExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultActivityPolicy:I

.field private blacklist mDefaultActivityPolicyConfigured:Z

.field private blacklist mDefaultNavigationPolicy:I

.field private blacklist mDefaultNavigationPolicyConfigured:Z

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private blacklist mDimDuration:Ljava/time/Duration;

.field private blacklist mHomeComponent:Landroid/content/ComponentName;

.field private blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private blacklist mLockState:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mScreenOffTimeout:Ljava/time/Duration;

.field private blacklist mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private blacklist mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private blacklist mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/32 v0, 0x591c8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public whitelist addVirtualSensorConfig(Landroid/companion/virtual/sensor/VirtualSensorConfig;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/companion/virtual/VirtualDeviceParams;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v4}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getDirectChannelTypesSupported()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VirtualSensorDirectChannelCallback is required for creating virtual sensors that support direct channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VirtualSensorCallback is required for creating virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_SENSORS is required for creating virtual sensors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_6

    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v1, v3, :cond_a

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_6
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setBlockedActivities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-boolean v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v1, :cond_a

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eq v1, v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_DEFAULT is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setAllowedActivities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    invoke-virtual {v1, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_13

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v1, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Landroid/companion/virtual/VirtualDeviceParams$Builder;->INFINITE_TIMEOUT:Ljava/time/Duration;

    iput-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->defaultDeviceCameraAccessPolicy()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->activityControlApi()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_d
    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    if-nez v1, :cond_e

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v3, :cond_12

    :cond_f
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_4
    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v3}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sensor names must be unique for a particular sensor type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v4, Landroid/companion/virtual/VirtualDeviceParams;

    iget v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iget v9, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    iget-object v12, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v13, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v14, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    iget v1, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    iget-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v19

    iget-object v0, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v21

    const/16 v23, 0x0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v4 .. v23}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IIJJLandroid/companion/virtual/VirtualDeviceParams-IA;)V

    return-object v4

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_AUDIO is required for configuration of device-specific audio session ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dim duration cannot be greater than the screen off timeout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Allowed cross task navigations and blocked cross task navigations cannot  both be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setAudioPlaybackSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid playback audio session id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setAudioRecordingSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid recording audio session id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setDevicePolicy(II)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method

.method public whitelist setDimDuration(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDimDuration:Ljava/time/Duration;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dim duration cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setHomeComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setInputMethodComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setScreenOffTimeout(Ljava/time/Duration;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mScreenOffTimeout:Ljava/time/Duration;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The screen off timeout cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setVirtualSensorCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    return-object p0
.end method

.method public whitelist setVirtualSensorDirectChannelCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    return-object p0
.end method
