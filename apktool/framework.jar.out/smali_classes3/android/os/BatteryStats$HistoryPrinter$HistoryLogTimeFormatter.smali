.class Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats$HistoryPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryLogTimeFormatter"
.end annotation


# static fields
.field private static final blacklist HOUR_MILLIS:J = 0x36ee80L

.field private static final blacklist MINUTE_MILLIS:J = 0xea60L


# instance fields
.field private blacklist mCachedHour:J

.field private blacklist mCachedHourFormatted:Ljava/lang/String;

.field private final blacklist mDate:Ljava/util/Date;

.field private final blacklist mDateFormat:Ljava/text/SimpleDateFormat;

.field private final blacklist mTimeZoneOffset:J


# direct methods
.method private constructor blacklist <init>(Ljava/util/TimeZone;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mTimeZoneOffset:J

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/TimeZone;Landroid/os/BatteryStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method blacklist append(Ljava/lang/StringBuilder;J)V
    .locals 8

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mTimeZoneOffset:J

    add-long/2addr v0, p2

    const-wide/32 v2, 0x36ee80

    div-long v4, v0, v2

    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHour:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    invoke-virtual {v6, p2, p3}, Ljava/util/Date;->setTime(J)V

    iget-object p2, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object p3, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mDate:Ljava/util/Date;

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHourFormatted:Ljava/lang/String;

    iput-wide v4, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHour:J

    :cond_0
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryPrinter$HistoryLogTimeFormatter;->mCachedHourFormatted:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v0, v2

    const-wide/32 p2, 0xea60

    div-long v2, v0, p2

    const-wide/16 v4, 0xa

    cmp-long p0, v2, v4

    const/16 v6, 0x30

    if-gez p0, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr v0, p2

    const-wide/16 p2, 0x3e8

    div-long v2, v0, p2

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-long/2addr v0, p2

    const-wide/16 p2, 0x64

    cmp-long p0, v0, p2

    if-gez p0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long p0, v0, v4

    if-gez p0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method
