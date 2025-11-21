.class public final Landroid/app/ApplicationStartInfo;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationStartInfo$StartComponent;,
        Landroid/app/ApplicationStartInfo$LaunchMode;,
        Landroid/app/ApplicationStartInfo$StartType;,
        Landroid/app/ApplicationStartInfo$StartReason;,
        Landroid/app/ApplicationStartInfo$StartupState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE:I = 0x2

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_MODE_SINGLE_TASK:I = 0x3

.field public static final whitelist LAUNCH_MODE_SINGLE_TOP:I = 0x1

.field public static final whitelist LAUNCH_MODE_STANDARD:I = 0x0

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_INTENT:Ljava/lang/String; = "intent"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TS:Ljava/lang/String; = "ts"

.field public static final whitelist STARTUP_STATE_ERROR:I = 0x1

.field public static final whitelist STARTUP_STATE_FIRST_FRAME_DRAWN:I = 0x2

.field public static final whitelist STARTUP_STATE_STARTED:I = 0x0

.field public static final whitelist START_COMPONENT_ACTIVITY:I = 0x1

.field public static final whitelist START_COMPONENT_BROADCAST:I = 0x2

.field public static final whitelist START_COMPONENT_CONTENT_PROVIDER:I = 0x3

.field public static final whitelist START_COMPONENT_OTHER:I = 0x5

.field public static final whitelist START_COMPONENT_SERVICE:I = 0x4

.field public static final whitelist START_REASON_ALARM:I = 0x0

.field public static final whitelist START_REASON_BACKUP:I = 0x1

.field public static final whitelist START_REASON_BOOT_COMPLETE:I = 0x2

.field public static final whitelist START_REASON_BROADCAST:I = 0x3

.field public static final whitelist START_REASON_CONTENT_PROVIDER:I = 0x4

.field public static final whitelist START_REASON_JOB:I = 0x5

.field public static final whitelist START_REASON_LAUNCHER:I = 0x6

.field public static final whitelist START_REASON_LAUNCHER_RECENTS:I = 0x7

.field public static final whitelist START_REASON_OTHER:I = 0x8

.field public static final whitelist START_REASON_PUSH:I = 0x9

.field public static final whitelist START_REASON_SERVICE:I = 0xa

.field public static final whitelist START_REASON_START_ACTIVITY:I = 0xb

.field public static final whitelist START_TIMESTAMP_APPLICATION_ONCREATE:I = 0x2

.field public static final whitelist START_TIMESTAMP_BIND_APPLICATION:I = 0x3

.field public static final whitelist START_TIMESTAMP_FIRST_FRAME:I = 0x4

.field public static final whitelist START_TIMESTAMP_FORK:I = 0x1

.field public static final whitelist START_TIMESTAMP_FULLY_DRAWN:I = 0x5

.field public static final whitelist START_TIMESTAMP_INITIAL_RENDERTHREAD_FRAME:I = 0x6

.field public static final whitelist START_TIMESTAMP_LAUNCH:I = 0x0

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER:I = 0x1e

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER_START:I = 0x15

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_SYSTEM:I = 0x14

.field public static final whitelist START_TIMESTAMP_SURFACEFLINGER_COMPOSITION_COMPLETE:I = 0x7

.field public static final whitelist START_TYPE_COLD:I = 0x1

.field public static final whitelist START_TYPE_HOT:I = 0x3

.field public static final whitelist START_TYPE_UNSET:I = 0x0

.field public static final whitelist START_TYPE_WARM:I = 0x2


# instance fields
.field private blacklist mDefiningUid:I

.field private blacklist mLaunchMode:I

.field private blacklist mMonotonicCreationTimeMs:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mStartComponent:I

.field private blacklist mStartIntent:Landroid/content/Intent;

.field private blacklist mStartType:I

.field private blacklist mStartupState:I

.field private blacklist mStartupTimestampsNs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWasForceStopped:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ApplicationStartInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationStartInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationStartInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iget v0, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget-boolean v0, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iget-wide v0, p1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iput-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iget p1, p1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return-void
.end method

.method private static blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "START ACTIVITY"

    return-object p0

    :pswitch_1
    const-string p0, "SERVICE"

    return-object p0

    :pswitch_2
    const-string p0, "PUSH"

    return-object p0

    :pswitch_3
    const-string p0, "OTHER"

    return-object p0

    :pswitch_4
    const-string p0, "LAUNCHER RECENTS"

    return-object p0

    :pswitch_5
    const-string p0, "LAUNCHER"

    return-object p0

    :pswitch_6
    const-string p0, "JOB"

    return-object p0

    :pswitch_7
    const-string p0, "CONTENT PROVIDER"

    return-object p0

    :pswitch_8
    const-string p0, "BROADCAST"

    return-object p0

    :pswitch_9
    const-string p0, "BOOT COMPLETE"

    return-object p0

    :pswitch_a
    const-string p0, "BACKUP"

    return-object p0

    :pswitch_b
    const-string p0, "ALARM"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist startComponentToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "OTHER"

    return-object p0

    :cond_1
    const-string p0, "SERVICE"

    return-object p0

    :cond_2
    const-string p0, "CONTENT PROVIDER"

    return-object p0

    :cond_3
    const-string p0, "BROADCAST"

    return-object p0

    :cond_4
    const-string p0, "ACTIVITY"

    return-object p0
.end method

.method private static blacklist startTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "HOT"

    return-object p0

    :cond_1
    const-string p0, "WARM"

    return-object p0

    :cond_2
    const-string p0, "COLD"

    return-object p0

    :cond_3
    const-string p0, "UNSET"

    return-object p0
.end method

.method private blacklist timestampsEquals(Landroid/app/ApplicationStartInfo;)Z
    .locals 1

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    iget-object p1, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist addStartupTimestamp(IJ)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :cond_1
    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .locals 1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ApplicationStartInfo "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":\n monotonicCreationTimeMs="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\n pid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " realUid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packageUid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " definingUid="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n package="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " process="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " startupState="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {p2}, Landroid/app/ApplicationStartInfo;->reasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " startType="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {p2}, Landroid/app/ApplicationStartInfo;->startTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " launchMode="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " wasForceStopped="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Flags;->appStartInfoComponent()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, " startComponent="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {p2}, Landroid/app/ApplicationStartInfo;->startComponentToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0xa

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string p3, " intent="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object p3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-lez p3, :cond_3

    const-string p3, " timestamps: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/app/ApplicationStartInfo;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p1, Landroid/app/ApplicationStartInfo;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v3, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget v4, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Landroid/app/ApplicationStartInfo;->timestampsEquals(Landroid/app/ApplicationStartInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iget-boolean v4, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iget-wide v5, p1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iget p1, p1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    if-ne p0, p1, :cond_4

    if-eqz v1, :cond_4

    return v2

    :cond_4
    :goto_2
    return v0
.end method

.method public whitelist getDefiningUid()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return p0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist getLaunchMode()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return p0
.end method

.method public blacklist getMonotonicCreationTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getPackageUid()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return p0
.end method

.method public whitelist getPid()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return p0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRealUid()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return p0
.end method

.method public whitelist getReason()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return p0
.end method

.method public whitelist getStartComponent()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return p0
.end method

.method public whitelist getStartType()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return p0
.end method

.method public whitelist getStartupState()I
    .locals 0

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return p0
.end method

.method public whitelist getStartupTimestamps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :cond_0
    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 15

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-wide v12, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v14, p0

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_2

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p4

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide p4, 0x1050000000eL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    goto :goto_0

    :pswitch_1
    const-wide p4, 0x1030000000dL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide p4

    iput-wide p4, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    goto :goto_0

    :pswitch_2
    const-wide p4, 0x1080000000cL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result p4

    iput-boolean p4, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    goto :goto_0

    :pswitch_3
    const-wide p4, 0x10e0000000bL

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    goto :goto_0

    :pswitch_4
    new-instance p4, Ljava/io/ByteArrayInputStream;

    const-wide p5, 0x10c0000000aL

    invoke-virtual {p1, p5, p6}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p5, Ljava/io/ObjectInputStream;

    invoke-direct {p5, p4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {p5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p4

    const-string p6, "intent"

    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object p4

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p5}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    :pswitch_5
    const-wide p4, 0x10e00000009L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    goto :goto_0

    :pswitch_6
    new-instance p4, Ljava/io/ByteArrayInputStream;

    const-wide p5, 0x10c00000008L

    invoke-virtual {p1, p5, p6}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p5, Ljava/io/ObjectInputStream;

    invoke-direct {p5, p4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p4, Landroid/util/ArrayMap;

    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    :try_start_1
    invoke-static {p5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p4

    const-string/jumbo p6, "timestamps"

    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p6

    :cond_0
    :goto_1
    invoke-static {p4, p6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "timestamp"

    invoke-interface {p4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key"

    const/4 v1, 0x0

    invoke-interface {p4, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "ts"

    invoke-interface {p4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    invoke-virtual {p5}, Ljava/io/ObjectInputStream;->close()V

    goto/16 :goto_0

    :pswitch_7
    const-wide p4, 0x10e00000007L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    goto/16 :goto_0

    :pswitch_8
    const-wide p4, 0x10e00000006L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    goto/16 :goto_0

    :pswitch_9
    const-wide p4, 0x10900000005L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    const-wide p4, 0x10500000004L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    goto/16 :goto_0

    :pswitch_b
    const-wide p4, 0x10500000003L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    goto/16 :goto_0

    :pswitch_c
    const-wide p4, 0x10500000002L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    goto/16 :goto_0

    :pswitch_d
    const-wide p4, 0x10500000001L

    invoke-virtual {p1, p4, p5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p4

    iput p4, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDefiningUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return-void
.end method

.method public blacklist setForceStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    :goto_0
    iget-object p1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getOriginalIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public blacklist setLaunchMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPackageUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return-void
.end method

.method public blacklist setPid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRealUid(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return-void
.end method

.method public blacklist setReason(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return-void
.end method

.method public blacklist setStartComponent(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return-void
.end method

.method public blacklist setStartType(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return-void
.end method

.method public blacklist setStartupState(I)V
    .locals 0

    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return-void
.end method

.method public whitelist wasForceStopped()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide p4, 0x10500000001L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000002L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000003L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000004L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10900000005L

    iget-object p6, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p4, 0x10e00000006L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10e00000007L

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 p5, 0x1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    if-lez p4, :cond_1

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "timestamps"

    invoke-interface {v1, p6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string/jumbo v4, "timestamp"

    invoke-interface {v1, p6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "key"

    invoke-interface {v1, p6, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v7, "ts"

    invoke-interface {v1, p6, v7, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, p6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, p6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    const-wide v1, 0x10c00000008L

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    const-wide v0, 0x10e00000009L

    iget p4, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p4, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz p4, :cond_2

    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p5, "intent"

    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v1, p6, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    const-wide p5, 0x10c0000000aL

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_2
    const-wide p4, 0x10e0000000bL

    iget p6, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x1080000000cL

    iget-boolean p6, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p4, 0x1030000000dL

    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x1050000000eL

    iget p0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
