.class public final Landroid/companion/AssociationInfo$Builder;
.super Ljava/lang/Object;
.source "AssociationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private blacklist mDeviceIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mDeviceId:Landroid/companion/DeviceId;

.field private blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private blacklist mLastTimeConnectedMs:J

.field private blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPending:Z

.field private blacklist mRevoked:Z

.field private blacklist mSelfManaged:Z

.field private blacklist mSystemDataSyncFlags:I

.field private blacklist mTimeApprovedMs:J

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result p1

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceIcon(Landroid/companion/AssociationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceId(Landroid/companion/AssociationInfo;)Landroid/companion/DeviceId;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/AssociationInfo;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    if-lez v1, :cond_2

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC address and the display name must NOT be null at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v2, Landroid/companion/AssociationInfo;

    iget v3, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iget v4, v0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iget-object v5, v0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v7, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v9, v0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v10, v0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    iget-boolean v11, v0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    iget-boolean v12, v0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    iget-boolean v13, v0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    iget-wide v14, v0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    move-object/from16 v16, v2

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    move-wide/from16 v17, v1

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    iget-object v2, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    move-object/from16 v20, v0

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    move-wide/from16 v16, v17

    move/from16 v18, v1

    invoke-direct/range {v2 .. v20}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJILandroid/graphics/drawable/Icon;Landroid/companion/DeviceId;)V

    move-object/from16 v16, v2

    return-object v16

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Association ID should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object p0
.end method

.method public blacklist setDeviceIcon(Landroid/graphics/drawable/Icon;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public blacklist setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceId:Landroid/companion/DeviceId;

    return-object p0
.end method

.method public blacklist setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public blacklist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastTimeConnectedMs must not be negative! (Given "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    return-object p0
.end method

.method public blacklist setPending(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    return-object p0
.end method

.method public blacklist setRevoked(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    return-object p0
.end method

.method public blacklist setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    return-object p0
.end method

.method public blacklist setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    return-object p0
.end method

.method public blacklist setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeApprovedMs must be positive. Was given ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
