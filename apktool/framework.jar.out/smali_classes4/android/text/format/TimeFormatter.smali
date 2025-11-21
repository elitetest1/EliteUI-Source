.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final blacklist DAYSPERLYEAR:I = 0x16e

.field private static final blacklist DAYSPERNYEAR:I = 0x16d

.field private static final blacklist DAYSPERWEEK:I = 0x7

.field private static final blacklist FORCE_LOWER_CASE:I = -0x1

.field private static final blacklist HOURSPERDAY:I = 0x18

.field private static final blacklist MINSPERHOUR:I = 0x3c

.field private static final blacklist MONSPERYEAR:I = 0xc

.field private static final blacklist SECSPERMIN:I = 0x3c

.field private static blacklist sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private static blacklist sDateOnlyFormat:Ljava/lang/String;

.field private static blacklist sDateTimeFormat:Ljava/lang/String;

.field private static blacklist sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private static blacklist sLocale:Ljava/util/Locale;

.field private static blacklist sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final blacklist dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final blacklist dateOnlyFormat:Ljava/lang/String;

.field private final blacklist dateTimeFormat:Ljava/lang/String;

.field private final blacklist decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private blacklist numberFormatter:Ljava/util/Formatter;

.field private blacklist outputBuilder:Ljava/lang/StringBuilder;

.field private final blacklist timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/text/format/TimeFormatter;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-static {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040faa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    const v2, 0x10408e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    const v2, 0x104043d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    :cond_1
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    sget-object v1, Landroid/text/format/TimeFormatter;->sDecimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    sget-object v1, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    sget-object v1, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static blacklist append2DigitNumber(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static blacklist brokenIsLower(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist brokenIsUpper(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist brokenToLower(C)C
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method private static blacklist brokenToUpper(C)C
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method private blacklist formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V
    .locals 3

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static blacklist getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 p3, 0x30

    if-eq p0, p3, :cond_1

    const/16 p3, 0x5f

    if-eq p0, p3, :cond_0

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    return-object p4

    :cond_2
    return-object p3
.end method

.method private blacklist handleToken(Ljava/nio/CharBuffer;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_24

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/CharBuffer;->get(I)C

    move-result v6

    const/16 v8, 0x23

    if-eq v6, v8, :cond_23

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_22

    const/16 v9, 0x2d

    if-eq v6, v9, :cond_23

    const/16 v10, 0x30

    if-eq v6, v10, :cond_23

    const/16 v10, 0x4d

    const-string v11, "%2d"

    const-string v12, "%d"

    const-string v13, "%02d"

    if-eq v6, v10, :cond_21

    const/16 v10, 0x70

    const/16 v14, 0xc

    if-eq v6, v10, :cond_1f

    const/16 v10, 0x4f

    if-eq v6, v10, :cond_0

    const/16 v10, 0x50

    if-eq v6, v10, :cond_1d

    const/16 v10, 0x5e

    if-eq v6, v10, :cond_23

    const/16 v10, 0x5f

    if-eq v6, v10, :cond_23

    const/16 v10, 0x67

    const/4 v15, 0x7

    if-eq v6, v10, :cond_15

    const/16 v8, 0x68

    const-string v17, "?"

    if-eq v6, v8, :cond_12

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    return v7

    :pswitch_1
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-gez v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v1

    if-gez v1, :cond_2

    neg-int v1, v1

    move v8, v9

    goto :goto_1

    :cond_2
    const/16 v8, 0x2b

    :goto_1
    iget-object v2, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v2, v1, 0x3c

    mul-int/lit8 v2, v2, 0x64

    rem-int/lit8 v1, v1, 0x3c

    add-int/2addr v2, v1

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v1, "%4d"

    const-string v3, "%04d"

    invoke-static {v5, v3, v1, v12, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v4, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v4

    :pswitch_3
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_4
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_5
    const-string v1, "%e-%b-%Y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_6
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v15

    :goto_2
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_7
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v4

    :pswitch_8
    invoke-virtual/range {p2 .. p3}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v1

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4

    :pswitch_9
    const-string v1, "%I:%M:%S %p"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_a
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v4

    :pswitch_b
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_c
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/2addr v1, v14

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/lit8 v14, v1, 0xc

    :cond_4
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v11, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_d
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v11, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_e
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    add-int/2addr v1, v7

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v2, "%3d"

    const-string v3, "%03d"

    invoke-static {v5, v3, v2, v12, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_f
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v11, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_10
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_11
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_12
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-lt v1, v15, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v4, v4}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    add-int/2addr v2, v7

    aget-object v17, v1, v2

    :cond_6
    :goto_3
    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :pswitch_13
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-gez v1, :cond_7

    return v4

    :cond_7
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move v7, v4

    :goto_4
    invoke-virtual {v3}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :pswitch_14
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v4

    :pswitch_15
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_16
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    sub-int/2addr v2, v7

    goto :goto_5

    :cond_9
    const/4 v2, 0x6

    :goto_5
    sub-int/2addr v1, v2

    div-int/2addr v1, v15

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_17
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_18
    const-string v1, "%H:%M:%S"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_19
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_1a
    const-string v1, "%H:%M"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_1b
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/2addr v1, v14

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    rem-int/lit8 v14, v1, 0xc

    :cond_a
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_1c
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :pswitch_1d
    const-string v1, "%Y-%m-%d"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_1e
    const-string v1, "%m/%d/%y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :pswitch_1f
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-direct {v0, v1, v7, v4, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v4

    :pswitch_20
    if-ne v5, v9, :cond_d

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v14, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v7, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v17, v1, v2

    :cond_c
    :goto_6
    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_f

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v14, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v4, v7}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v17, v1, v2

    :cond_f
    :goto_7
    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    :goto_8
    return v4

    :pswitch_21
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-ltz v1, :cond_11

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    if-lt v1, v15, :cond_10

    goto :goto_9

    :cond_10
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v4, v7}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v2

    add-int/2addr v2, v7

    aget-object v17, v1, v2

    :cond_11
    :goto_9
    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :cond_12
    :pswitch_22
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-ltz v1, :cond_14

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    if-lt v1, v14, :cond_13

    goto :goto_a

    :cond_13
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v4, v4}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    aget-object v17, v1, v2

    :cond_14
    :goto_a
    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :cond_15
    :pswitch_23
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v8

    :goto_b
    invoke-static {v1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x16e

    goto :goto_c

    :cond_16
    const/16 v2, 0x16d

    :goto_c
    add-int/lit8 v16, v3, 0xb

    sub-int v16, v16, v8

    rem-int/lit8 v16, v16, 0x7

    add-int/lit8 v9, v16, -0x3

    rem-int/lit8 v16, v2, 0x7

    sub-int v14, v9, v16

    move/from16 v16, v15

    const/4 v15, -0x3

    if-ge v14, v15, :cond_17

    add-int/lit8 v14, v14, 0x7

    :cond_17
    add-int/2addr v14, v2

    if-lt v3, v14, :cond_18

    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_d

    :cond_18
    if-lt v3, v9, :cond_1b

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v7

    :goto_d
    const/16 v2, 0x56

    if-ne v6, v2, :cond_19

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_e

    :cond_19
    if-ne v6, v10, :cond_1a

    invoke-direct {v0, v1, v4, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_e

    :cond_1a
    invoke-direct {v0, v1, v7, v7, v5}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    :goto_e
    return v4

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v9, 0x16e

    goto :goto_f

    :cond_1c
    const/16 v9, 0x16d

    :goto_f
    add-int/2addr v3, v9

    move/from16 v15, v16

    goto :goto_b

    :cond_1d
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    if-lt v1, v14, :cond_1e

    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    goto :goto_10

    :cond_1e
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    :goto_10
    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :cond_1f
    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    if-lt v1, v14, :cond_20

    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    goto :goto_11

    :cond_20
    iget-object v1, v0, Landroid/text/format/TimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    :goto_11
    invoke-direct {v0, v1, v5}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v4

    :cond_21
    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v5, v13, v11, v12, v13}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v4

    :cond_22
    const-string v1, "%a %b %e %H:%M:%S %Z %Y"

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    return v4

    :cond_23
    move v5, v6

    goto/16 :goto_0

    :cond_24
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_23
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_12
        :pswitch_22
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist isLeap(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Landroid/text/format/TimeFormatter;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p0

    sub-int/2addr p0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v1, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    add-int/2addr v4, p0

    int-to-char v4, v4

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5e

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result p2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result p2

    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_5

    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private blacklist outputYear(IZZI)V
    .locals 5

    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 p1, p1, 0x64

    div-int/lit8 v1, v0, 0x64

    add-int/2addr p1, v1

    rem-int/lit8 v0, v0, 0x64

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x64

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x64

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    const-string v1, "%d"

    const-string v2, "%2d"

    const-string v3, "%02d"

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    if-gez v0, :cond_2

    iget-object p1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string p2, "-0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v3, v2, v1, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-gez v0, :cond_4

    neg-int v0, v0

    :cond_4
    iget-object p0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {p4, v3, v2, v1, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw p1
.end method

.method blacklist formatMillisWithFixedFormat(J)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-static {p2, v0}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result p1

    invoke-static {p2, p1}, Landroid/text/format/TimeFormatter;->append2DigitNumber(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
