.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field private blacklist mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

.field public greylist-max-o timezone:Ljava/lang/String;

.field public final blacklist wallTime:Lcom/android/i18n/timezone/WallTime;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object p1

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    new-instance p1, Lcom/android/i18n/timezone/WallTime;

    invoke-direct {p1}, Lcom/android/i18n/timezone/WallTime;-><init>()V

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    return-void
.end method

.method public static greylist-max-o compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 4

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result p0

    iget-object p1, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result p1

    sub-int/2addr p0, p1

    if-eqz p0, :cond_5

    return p0

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide p0

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-gez p0, :cond_7

    const/4 p0, -0x1

    return p0

    :cond_7
    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v1
.end method

.method private static blacklist lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .locals 3

    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GMT not found: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o toChar(I)C
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x9

    if-gt p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x30

    int-to-char p0, p1

    return p0

    :cond_0
    const/16 p0, 0x20

    return p0
.end method

.method private greylist-max-o updateZoneInfoFromTimeZone()V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 3

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setSecond(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMinute(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setHour(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonthDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setMonth(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYear(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setWeekDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setYearDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-wide v1, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->setGmtOffset(I)V

    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    return-void
.end method

.method public greylist-max-o copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p0}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result p0

    int-to-long v0, p0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public greylist-max-o format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "%c"

    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1, v1, p0}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Lcom/android/i18n/timezone/WallTime;Lcom/android/i18n/timezone/ZoneInfoData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o format2445(Z)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v2, v2, [C

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v3

    div-int/lit16 v4, v3, 0x3e8

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v2, v5

    rem-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v4, v3, 0x64

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v6, 0x1

    aput-char v4, v2, v6

    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v4, v3, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v7, 0x2

    aput-char v4, v2, v7

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    const/4 v7, 0x3

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    aput-char v3, v2, v7

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v3

    add-int/2addr v3, v6

    div-int/lit8 v6, v3, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    const/4 v7, 0x4

    aput-char v6, v2, v7

    rem-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/4 v6, 0x5

    aput-char v3, v2, v6

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v3

    div-int/lit8 v6, v3, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    const/4 v7, 0x6

    aput-char v6, v2, v7

    rem-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    const/4 v6, 0x7

    aput-char v3, v2, v6

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_1
    const/16 p1, 0x54

    aput-char p1, v2, v1

    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result p1

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v1

    const/16 v3, 0x9

    aput-char v1, v2, v3

    rem-int/2addr p1, v4

    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result p1

    aput-char p1, v2, v4

    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result p1

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v1

    const/16 v3, 0xb

    aput-char v1, v2, v3

    rem-int/2addr p1, v4

    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result p1

    const/16 v1, 0xc

    aput-char p1, v2, v1

    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p1}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result p1

    div-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v1

    const/16 v3, 0xd

    aput-char v1, v2, v3

    rem-int/2addr p1, v4

    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result p1

    const/16 v1, 0xe

    aput-char p1, v2, v1

    const-string p1, "UTC"

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 p1, 0xf

    if-eqz p0, :cond_2

    const/16 p0, 0x5a

    aput-char p0, v2, p1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public greylist-max-o setTimeInMillis(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object p2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {p2, p1, p0}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    return-void
.end method

.method public greylist-max-o switchTimeZone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result v0

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {p1, v0, p0}, Lcom/android/i18n/timezone/WallTime;->localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V

    return-void
.end method

.method public greylist-max-o toMillis(Z)J
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {p1, v0}, Lcom/android/i18n/timezone/WallTime;->setIsDst(I)V

    :cond_0
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->mZoneInfoData:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {p1, p0}, Lcom/android/i18n/timezone/WallTime;->mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I

    move-result p0

    if-ne p0, v0, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public greylist-max-o toStringInternal()Ljava/lang/String;
    .locals 15

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMonthDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getSecond()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getWeekDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getYearDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getGmtOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Lcom/android/i18n/timezone/WallTime;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/WallTime;->getIsDst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    const-wide/16 v13, 0x3e8

    div-long/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
