.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_ACCELERATION_X:F

.field public static final blacklist FLOAT_ACCELERATION_Y:F

.field public static final blacklist FLOAT_ACCELERATION_Z:F

.field public static final blacklist FLOAT_ANIMATION_DELTA_TIME:F

.field public static final blacklist FLOAT_ANIMATION_TIME:F

.field public static final blacklist FLOAT_API_LEVEL:F

.field public static final blacklist FLOAT_CALENDAR_MONTH:F

.field public static final blacklist FLOAT_COMPONENT_HEIGHT:F

.field public static final blacklist FLOAT_COMPONENT_WIDTH:F

.field public static final blacklist FLOAT_CONTINUOUS_SEC:F

.field public static final blacklist FLOAT_DAY_OF_MONTH:F

.field public static final blacklist FLOAT_DENSITY:F

.field public static final blacklist FLOAT_FONT_SIZE:F

.field public static final blacklist FLOAT_GYRO_ROT_X:F

.field public static final blacklist FLOAT_GYRO_ROT_Y:F

.field public static final blacklist FLOAT_GYRO_ROT_Z:F

.field public static final blacklist FLOAT_LIGHT:F

.field public static final blacklist FLOAT_MAGNETIC_X:F

.field public static final blacklist FLOAT_MAGNETIC_Y:F

.field public static final blacklist FLOAT_MAGNETIC_Z:F

.field public static final blacklist FLOAT_OFFSET_TO_UTC:F

.field public static final blacklist FLOAT_TIME_IN_HR:F

.field public static final blacklist FLOAT_TIME_IN_MIN:F

.field public static final blacklist FLOAT_TIME_IN_SEC:F

.field public static final blacklist FLOAT_TOUCH_EVENT_TIME:F

.field public static final blacklist FLOAT_TOUCH_POS_X:F

.field public static final blacklist FLOAT_TOUCH_POS_Y:F

.field public static final blacklist FLOAT_TOUCH_VEL_X:F

.field public static final blacklist FLOAT_TOUCH_VEL_Y:F

.field public static final blacklist FLOAT_WEEK_DAY:F

.field public static final blacklist FLOAT_WINDOW_HEIGHT:F

.field public static final blacklist FLOAT_WINDOW_WIDTH:F

.field public static final blacklist ID_ACCELERATION_X:I = 0x11

.field public static final blacklist ID_ACCELERATION_Y:I = 0x12

.field public static final blacklist ID_ACCELERATION_Z:I = 0x13

.field public static final blacklist ID_ANIMATION_DELTA_TIME:I = 0x1f

.field public static final blacklist ID_ANIMATION_TIME:I = 0x1e

.field public static final blacklist ID_API_LEVEL:I = 0x1c

.field public static final blacklist ID_CALENDAR_MONTH:I = 0x9

.field public static final blacklist ID_COMPONENT_HEIGHT:I = 0x8

.field public static final blacklist ID_COMPONENT_WIDTH:I = 0x7

.field public static final blacklist ID_CONTINUOUS_SEC:I = 0x1

.field public static final blacklist ID_DAY_OF_MONTH:I = 0xc

.field public static final blacklist ID_DENSITY:I = 0x1b

.field public static final blacklist ID_EPOCH_SECOND:I = 0x20

.field public static final blacklist ID_FONT_SIZE:I = 0x21

.field public static final blacklist ID_GYRO_ROT_X:I = 0x14

.field public static final blacklist ID_GYRO_ROT_Y:I = 0x15

.field public static final blacklist ID_GYRO_ROT_Z:I = 0x16

.field public static final blacklist ID_LIGHT:I = 0x1a

.field public static final blacklist ID_MAGNETIC_X:I = 0x17

.field public static final blacklist ID_MAGNETIC_Y:I = 0x18

.field public static final blacklist ID_MAGNETIC_Z:I = 0x19

.field public static final blacklist ID_OFFSET_TO_UTC:I = 0xa

.field public static final blacklist ID_TIME_IN_HR:I = 0x4

.field public static final blacklist ID_TIME_IN_MIN:I = 0x3

.field public static final blacklist ID_TIME_IN_SEC:I = 0x2

.field public static final blacklist ID_TOUCH_EVENT_TIME:I = 0x1d

.field public static final blacklist ID_TOUCH_POS_X:I = 0xd

.field public static final blacklist ID_TOUCH_POS_Y:I = 0xe

.field public static final blacklist ID_TOUCH_VEL_X:I = 0xf

.field public static final blacklist ID_TOUCH_VEL_Y:I = 0x10

.field public static final blacklist ID_WEEK_DAY:I = 0xb

.field public static final blacklist ID_WINDOW_HEIGHT:I = 0x6

.field public static final blacklist ID_WINDOW_WIDTH:I = 0x5

.field public static final blacklist INT_EPOCH_SECOND:J = 0x100000020L

.field private static final blacklist MAX_OP_COUNT:I = 0x4e20


# instance fields
.field public blacklist currentTime:J

.field private blacklist mAnimate:Z

.field private blacklist mAnimationTime:F

.field blacklist mDebug:I

.field protected blacklist mDensity:F

.field private blacklist mDocLoadTime:J

.field protected blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field public blacklist mHeight:F

.field public blacklist mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field blacklist mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field private blacklist mOpCount:I

.field protected blacklist mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

.field public blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mTheme:I

.field private blacklist mUseChoreographer:Z

.field public blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DENSITY:F

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CONTINUOUS_SEC:F

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_SEC:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_MIN:F

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_HR:F

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CALENDAR_MONTH:F

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WEEK_DAY:F

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_DAY_OF_MONTH:F

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_WIDTH:F

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_HEIGHT:F

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_WIDTH:F

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_HEIGHT:F

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_OFFSET_TO_UTC:F

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_X:F

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_VEL_Y:F

    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_EVENT_TIME:F

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_TIME:F

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ANIMATION_DELTA_TIME:F

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_X:F

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Y:F

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_ACCELERATION_Z:F

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_X:F

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Y:F

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_GYRO_ROT_Z:F

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_X:F

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Y:F

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_MAGNETIC_Z:F

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_LIGHT:F

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_API_LEVEL:F

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_FONT_SIZE:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->currentTime:J

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return-void
.end method

.method public static blacklist getTime(F)F
    .locals 9

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Month;->getValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v6, v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v7

    add-float/2addr v5, v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/DayOfWeek;->getValue()I

    move-result v7

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    return p0

    :pswitch_0
    int-to-float p0, v7

    return p0

    :pswitch_1
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-float p0, p0

    return p0

    :pswitch_2
    int-to-float p0, v2

    return p0

    :cond_0
    int-to-float p0, v3

    return p0

    :cond_1
    int-to-float p0, v6

    return p0

    :cond_2
    return v4

    :cond_3
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static blacklist isTime(F)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract blacklist addClickArea(IIFFFFI)V
.end method

.method public abstract blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .locals 0

    return-void
.end method

.method public blacklist clearLastOpCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    return-void
.end method

.method public abstract blacklist clearNamedDataOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedFloatOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
.end method

.method public abstract blacklist clearNamedStringOverride(Ljava/lang/String;)V
.end method

.method public blacklist getAnimationTime()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    return p0
.end method

.method public blacklist getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object p0
.end method

.method public abstract blacklist getColor(I)I
.end method

.method public abstract blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
.end method

.method public blacklist getDensity()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    return p0
.end method

.method public blacklist getDocLoadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    return-wide v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object p0
.end method

.method public abstract blacklist getFloat(I)F
.end method

.method public abstract blacklist getInteger(I)I
.end method

.method public blacklist getLastOpCount()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    return v0
.end method

.method public abstract blacklist getLong(I)J
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object p0
.end method

.method public abstract blacklist getObject(I)Ljava/lang/Object;
.end method

.method public blacklist getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-object p0
.end method

.method public abstract blacklist getPathData(I)[F
.end method

.method public abstract blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public blacklist getTheme()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return p0
.end method

.method public abstract blacklist hapticEffect(I)V
.end method

.method public blacklist header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIJ",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p1, p6, p7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRequiredCapabilities(J)V

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    return-void
.end method

.method public blacklist incrementOpCount()V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mOpCount:I

    const/16 p0, 0x4e20

    if-gt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Too many operations executed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist isAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    return p0
.end method

.method public blacklist isDebug()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVisualDebug()Z
    .locals 1

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
.end method

.method public abstract blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
.end method

.method public abstract blacklist loadBitmap(ISSII[B)V
.end method

.method public abstract blacklist loadColor(II)V
.end method

.method public abstract blacklist loadFloat(IF)V
.end method

.method public abstract blacklist loadInteger(II)V
.end method

.method public abstract blacklist loadPathData(I[F)V
.end method

.method public abstract blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
.end method

.method public abstract blacklist loadText(ILjava/lang/String;)V
.end method

.method public abstract blacklist loadVariableName(Ljava/lang/String;II)V
.end method

.method public blacklist needsRepaint()V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->needsRepaint()V

    :cond_0
    return-void
.end method

.method public abstract blacklist overrideFloat(IF)V
.end method

.method public abstract blacklist overrideInteger(II)V
.end method

.method public abstract blacklist overrideText(II)V
.end method

.method public abstract blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
.end method

.method public abstract blacklist putObject(ILjava/lang/Object;)V
.end method

.method public abstract blacklist runAction(ILjava/lang/String;)V
.end method

.method public abstract blacklist runNamedAction(ILjava/lang/Object;)V
.end method

.method public blacklist setAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimate:Z

    return-void
.end method

.method public blacklist setAnimationTime(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mAnimationTime:F

    return-void
.end method

.method public blacklist setDebug(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:I

    return-void
.end method

.method public blacklist setDensity(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDensity:F

    :cond_0
    return-void
.end method

.method public blacklist setDocLoadTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocLoadTime:J

    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-void
.end method

.method public blacklist setDocumentContentDescription(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMode(Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-void
.end method

.method public abstract blacklist setNamedColorOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setNamedFloatOverride(Ljava/lang/String;F)V
.end method

.method public abstract blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
.end method

.method public abstract blacklist setNamedLong(Ljava/lang/String;J)V
.end method

.method public abstract blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist setPaintContext(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRootContentBehavior(IIII)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return-void
.end method

.method public blacklist setUseChoreographer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return-void
.end method

.method public blacklist supportsVersion(III)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->supportsVersion(III)Z

    move-result p0

    return p0
.end method

.method public abstract blacklist updateOps()I
.end method

.method public blacklist useChoreographer()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mUseChoreographer:Z

    return p0
.end method
