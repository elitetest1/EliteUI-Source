.class public Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "TimeAttribute.java"


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TimeAttribute"

.field private static final blacklist OP_CODE:I = 0xac

.field public static final blacklist TIME_DAY_OF_MONTH:S = 0x9s

.field public static final blacklist TIME_DAY_OF_WEEK:S = 0xbs

.field public static final blacklist TIME_FROM_ARG_HR:S = 0x5s

.field public static final blacklist TIME_FROM_ARG_MIN:S = 0x4s

.field public static final blacklist TIME_FROM_ARG_SEC:S = 0x3s

.field public static final blacklist TIME_FROM_LOAD_SEC:S = 0xes

.field public static final blacklist TIME_FROM_NOW_HR:S = 0x2s

.field public static final blacklist TIME_FROM_NOW_MIN:S = 0x1s

.field public static final blacklist TIME_FROM_NOW_SEC:S = 0x0s

.field public static final blacklist TIME_IN_HR:S = 0x8s

.field public static final blacklist TIME_IN_MIN:S = 0x7s

.field public static final blacklist TIME_IN_SEC:S = 0x6s

.field public static final blacklist TIME_MONTH_VALUE:S = 0xas

.field public static final blacklist TIME_YEAR:S = 0xcs


# instance fields
.field private final blacklist mArgs:[I

.field blacklist mBounds:[F

.field public blacklist mId:I

.field public blacklist mTimeId:I

.field public blacklist mType:S


# direct methods
.method public constructor blacklist <init>(IIS[I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mBounds:[F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    iput-short p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V
    .locals 1

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    const/4 p1, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    return-void

    :cond_0
    array-length p2, p4

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    array-length p2, p4

    :goto_0
    if-ge p1, p2, :cond_1

    aget p3, p4, p1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 4

    const/16 v0, 0xac

    const-string v1, "TimeAttribute"

    const-string v2, "Time Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "Calculate Information about time"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "id to output"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "longId"

    const-string v1, "id of time to calculate on"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "the type of calculation"

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "argsLength"

    const-string v1, "The number of additional args"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v3, "args"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getTypeString()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 p0, p0, 0xff

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "INVALID_TIME_TYPE"

    return-object p0

    :pswitch_1
    const-string p0, "TIME_FROM_LOAD_SEC"

    return-object p0

    :pswitch_2
    const-string p0, "TIME_YEAR"

    return-object p0

    :pswitch_3
    const-string p0, "TIME_DAY_OF_WEEK"

    return-object p0

    :pswitch_4
    const-string p0, "TIME_MONTH_VALUE"

    return-object p0

    :pswitch_5
    const-string p0, "TIME_DAY_OF_MONTH"

    return-object p0

    :pswitch_6
    const-string p0, "TIME_IN_HR"

    return-object p0

    :pswitch_7
    const-string p0, "TIME_IN_MIN"

    return-object p0

    :pswitch_8
    const-string p0, "TIME_IN_SEC"

    return-object p0

    :pswitch_9
    const-string p0, "TIME_FROM_ARG_HR"

    return-object p0

    :pswitch_a
    const-string p0, "TIME_FROM_ARG_MIN"

    return-object p0

    :pswitch_b
    const-string p0, "TIME_FROM_ARG_SEC"

    return-object p0

    :pswitch_c
    const-string p0, "TIME_FROM_NOW_HR"

    return-object p0

    :pswitch_d
    const-string p0, "TIME_FROM_NOW_MIN"

    return-object p0

    :pswitch_e
    const-string p0, "TIME_FROM_NOW_SEC"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0xac

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeAttribute"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v3

    int-to-short v3, v3

    if-eqz v3, :cond_0

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;-><init>(IIS[I)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 11

    iget-short v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDocLoadTime()J

    move-result-wide v1

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-static {}, Ljava/time/ZoneOffset;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v7

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v5

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    sub-long v5, v3, v5

    :goto_1
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    const v10, 0x3a83126f    # 0.001f

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    return-void

    :pswitch_4
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    sub-long/2addr v3, v1

    long-to-float v0, v3

    mul-float/2addr v0, v10

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void

    :pswitch_5
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_6
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_7
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_8
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_9
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_a
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_b
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_c
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v0, v5

    mul-double/2addr v0, v8

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :pswitch_d
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-double v0, v5

    mul-double/2addr v0, v8

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void

    :pswitch_e
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    long-to-float v0, v5

    mul-float/2addr v0, v10

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "TimeAttribute"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "timeId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->getTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "args"

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    const-string v1, "] = "

    const-string v2, "TimeAttribute["

    const-string v3, " "

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mArgs:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mTimeId:I

    iget-short p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->mType:S

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    return-void
.end method
