.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;,
        Landroid/widget/DateTimeView$DisambiguationTextMask;,
        Landroid/widget/DateTimeView$UnitDisplayLength;
    }
.end annotation


# static fields
.field public static final blacklist DISAMBIGUATION_TEXT_FUTURE:I = 0x2

.field public static final blacklist DISAMBIGUATION_TEXT_PAST:I = 0x1

.field private static final greylist-max-o SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final greylist-max-o SHOW_TIME:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DateTimeView"

.field public static final blacklist UNIT_DISPLAY_LENGTH_MEDIUM:I = 0x1

.field public static final blacklist UNIT_DISPLAY_LENGTH_SHORTEST:I

.field private static final greylist-max-o sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sTimeFormat:Ljava/text/DateFormat;


# instance fields
.field private final blacklist mCanUseRelativeTimeDisplayConfigs:Z

.field greylist-max-o mLastDisplay:I

.field greylist-max-o mLastFormat:Ljava/text/DateFormat;

.field private blacklist mLocalTime:Ljava/time/LocalDateTime;

.field private greylist-max-o mNowText:Ljava/lang/String;

.field private blacklist mRelativeTimeDisambiguationTextMask:I

.field private blacklist mRelativeTimeUnitDisplayLength:I

.field private greylist-max-o mShowRelativeTime:Z

.field private greylist-max-o mTimeMillis:J

.field private greylist-max-o mUpdateTimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsTimeFormat(Ljava/text/DateFormat;)V
    .locals 0

    sput-object p0, Landroid/widget/DateTimeView;->sTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/view/flags/Flags;->dateTimeViewRelativeTimeDisplayConfigs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    sget-object v2, Lcom/android/internal/R$styleable;->DateTimeView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/DateTimeView;->setRelativeTimeDisambiguationTextMask(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/DateTimeView;->setRelativeTimeUnitDisplayLength(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static blacklist computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 2

    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I
    .locals 2

    sget-object v0, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    sget-object p1, Ljava/time/temporal/JulianFields;->JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private blacklist getDaysStringId(Z)I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x10404ce

    const v2, 0x10404cf

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const p0, 0x10404d0

    return p0

    :cond_2
    if-nez p1, :cond_3

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const p0, 0x10404cb

    return p0

    :cond_5
    if-nez p1, :cond_6

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const p0, 0x10404ca

    return p0

    :cond_6
    const p0, 0x10404c9

    return p0
.end method

.method private blacklist getHoursStringId(Z)I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x10404d6

    const v2, 0x10404d7

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const p0, 0x10404d8

    return p0

    :cond_2
    if-nez p1, :cond_3

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const p0, 0x10404d3

    return p0

    :cond_5
    if-nez p1, :cond_6

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const p0, 0x10404d2

    return p0

    :cond_6
    const p0, 0x10404d1

    return p0
.end method

.method private blacklist getMinutesStringId(Z)I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x10404de

    const v2, 0x10404df

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const p0, 0x10404e0

    return p0

    :cond_2
    if-nez p1, :cond_3

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const p0, 0x10404db

    return p0

    :cond_5
    if-nez p1, :cond_6

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const p0, 0x10404da

    return p0

    :cond_6
    const p0, 0x10404d9

    return p0
.end method

.method private greylist-max-o getTimeFormat()Ljava/text/DateFormat;
    .locals 2

    const-string v0, "DateTimeView"

    const-string v1, "getTimeFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getYearsStringId(Z)I
    .locals 3

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    const v1, 0x10404e6

    const v2, 0x10404e7

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const p0, 0x10404e8

    return p0

    :cond_2
    if-nez p1, :cond_3

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const p0, 0x10404e3

    return p0

    :cond_5
    if-nez p1, :cond_6

    iget p0, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const p0, 0x10404e2

    return p0

    :cond_6
    const p0, 0x10404e1

    return p0
.end method

.method private blacklist maybeSetText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static greylist-max-o setReceiverHandler(Landroid/os/Handler;)V
    .locals 3

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private static blacklist toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J
    .locals 0

    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o updateNowText()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104098b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o updateRelativeTime()V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/32 v6, 0xea60

    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    iget-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    const-wide/32 v2, 0xea61

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_1
    const-wide/32 v8, 0x36ee80

    cmp-long v10, v2, v8

    const-wide/16 v11, -0x1

    if-gez v10, :cond_2

    div-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getMinutesStringId(Z)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    const-wide/32 v6, 0x5265c00

    cmp-long v10, v2, v6

    if-gez v10, :cond_3

    div-long/2addr v2, v8

    long-to-int v0, v2

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getHoursStringId(Z)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-wide v6, v8

    goto :goto_2

    :cond_3
    const-wide v8, 0x7528ad000L

    cmp-long v10, v2, v8

    if-gez v10, :cond_6

    iget-object v2, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getDaysStringId(Z)I

    move-result v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_4

    if-eq v1, v5, :cond_5

    :cond_4
    invoke-static {v0, v3}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    move-wide v6, v11

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_6
    div-long/2addr v2, v8

    long-to-int v0, v2

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->getYearsStringId(Z)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    cmp-long v2, v6, v11

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x1

    if-eqz v4, :cond_7

    iget-wide v8, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    add-int/2addr v0, v5

    int-to-long v4, v0

    mul-long/2addr v6, v4

    add-long/2addr v8, v6

    add-long/2addr v8, v2

    iput-wide v8, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_3

    :cond_7
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    int-to-long v8, v0

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method greylist-max-o clearFormatAndUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public blacklist isShowRelativeTime()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    return p0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView-IA;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-wide/32 v7, 0xea60

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    iget-object p0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v2, v9

    const-string v12, "count"

    if-gez v11, :cond_3

    div-long/2addr v2, v7

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_2

    const v0, 0x10404dc

    goto :goto_1

    :cond_2
    const v0, 0x10404dd

    :goto_1
    invoke-static {p0, v6, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_3
    const-wide/32 v7, 0x5265c00

    cmp-long v7, v2, v7

    if-gez v7, :cond_5

    div-long/2addr v2, v9

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_4

    const v0, 0x10404d4

    goto :goto_2

    :cond_4
    const v0, 0x10404d5

    :goto_2
    invoke-static {p0, v6, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-wide v7, 0x7528ad000L

    cmp-long v9, v2, v7

    if-gez v9, :cond_7

    iget-object v2, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->dayDistance(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_6

    const v0, 0x10404cc

    goto :goto_3

    :cond_6
    const v0, 0x10404cd

    :goto_3
    invoke-static {p0, v6, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_7
    div-long/2addr v2, v7

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v4, :cond_8

    const v0, 0x10404e4

    goto :goto_4

    :cond_8
    const v0, 0x10404e5

    :goto_4
    invoke-static {p0, v6, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public blacklist setRelativeTimeDisambiguationTextMask(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/DateTimeView;->mRelativeTimeDisambiguationTextMask:I

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public blacklist setRelativeTimeUnitDisplayLength(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mCanUseRelativeTimeDisplayConfigs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/widget/DateTimeView;->mRelativeTimeUnitDisplayLength:I

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public greylist-max-o setShowRelativeTime(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public greylist setTime(J)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/widget/DateTimeView;->toLocalDateTime(JLjava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    :cond_1
    return-void
.end method

.method greylist update()V
    .locals 15

    iget-object v0, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    return-void

    :cond_1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DateTimeView;->mLocalTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v4

    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v6

    invoke-static {v2, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v10

    invoke-static {v3, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v2

    invoke-static {v1, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v12

    invoke-static {v4, v0}, Landroid/widget/DateTimeView;->toEpochMillis(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)J

    move-result-wide v0

    cmp-long v4, v0, v10

    const/4 v14, 0x1

    if-ltz v4, :cond_2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    :cond_2
    cmp-long v4, v0, v8

    if-ltz v4, :cond_3

    cmp-long v4, v0, v6

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v14

    :cond_4
    :goto_0
    iget v4, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    if-ne v5, v4, :cond_5

    iget-object v4, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    if-ne v5, v14, :cond_6

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown display value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object v4, Landroid/widget/DateTimeView;->sTimeFormat:Ljava/text/DateFormat;

    if-eqz v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    :goto_2
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/DateTimeView;->maybeSetText(Ljava/lang/String;)V

    if-nez v5, :cond_a

    cmp-long v0, v6, v2

    if-lez v0, :cond_9

    goto :goto_3

    :cond_9
    move-wide v6, v2

    :goto_3
    iput-wide v6, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_a
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-void

    :cond_b
    cmp-long v0, v8, v10

    if-gez v0, :cond_c

    goto :goto_4

    :cond_c
    move-wide v8, v10

    :goto_4
    iput-wide v8, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    :cond_d
    :goto_5
    return-void
.end method
