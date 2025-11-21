.class public Landroid/app/admin/FreezePeriod;
.super Ljava/lang/Object;
.source "FreezePeriod.java"


# static fields
.field static final greylist-max-o DAYS_IN_YEAR:I = 0x16d

.field private static final blacklist SENTINEL_YEAR:I = 0x7d1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FreezePeriod"


# instance fields
.field private final greylist-max-o mEnd:Ljava/time/MonthDay;

.field private final greylist-max-o mEndDay:I

.field private final greylist-max-o mStart:Ljava/time/MonthDay;

.field private final greylist-max-o mStartDay:I


# direct methods
.method private constructor greylist-max-o <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    iput p2, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {p2}, Landroid/app/admin/FreezePeriod;->dayOfYearToMonthDay(I)Ljava/time/MonthDay;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/time/MonthDay;Ljava/time/MonthDay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    const/16 v0, 0x7d1

    invoke-virtual {p1, v0}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    iput p1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iput-object p2, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    invoke-virtual {p2, v0}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    iput p1, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    return-void
.end method

.method static greylist-max-o canonicalizePeriods(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x16d

    new-array v1, v0, [Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    iget v4, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    :goto_0
    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v5

    if-gt v4, v5, :cond_0

    add-int/lit8 v5, v4, -0x1

    rem-int/2addr v5, v0

    aput-boolean v3, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_4

    aget-boolean v5, v1, v4

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    :goto_2
    if-ge v4, v0, :cond_3

    aget-boolean v6, v1, v4

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance v6, Landroid/app/admin/FreezePeriod;

    invoke-direct {v6, v5, v4}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-lez v1, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    iget v4, v4, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-ne v4, v0, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/FreezePeriod;

    iget v0, v0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ne v0, v3, :cond_5

    new-instance v0, Landroid/app/admin/FreezePeriod;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/FreezePeriod;

    iget v3, v3, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/FreezePeriod;

    iget v4, v4, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-direct {v0, v3, v4}, Landroid/app/admin/FreezePeriod;-><init>(II)V

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object p0
.end method

.method private static greylist-max-o dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I
    .locals 1

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p0

    return p0
.end method

.method private static greylist-max-o dayOfYearToMonthDay(I)Ljava/time/MonthDay;
    .locals 1

    const/16 v0, 0x7d1

    invoke-static {v0, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I
    .locals 2

    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result p0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result p1

    sub-int/2addr p0, p1

    mul-int/lit16 p0, p0, 0x16d

    add-int/2addr v0, p0

    return v0
.end method

.method static greylist-max-o validateAgainstPreviousFreezePeriod(Ljava/util/List;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    const-string v1, ","

    if-nez v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Previous period ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is after current date "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FreezePeriod"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/FreezePeriod;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v2, p3}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v2, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p3}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v4

    if-le v3, v4, :cond_3

    :cond_4
    move-object v0, v2

    :cond_5
    invoke-virtual {v0, p3}, Landroid/app/admin/FreezePeriod;->toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/time/LocalDate;

    invoke-direct {v0, p3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    :cond_6
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/time/LocalDate;

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Prev: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; cur: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/LocalDate;

    invoke-static {v0, p2}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v2, ", "

    if-lez p2, :cond_8

    const-wide/16 p0, 0x3c

    cmp-long p0, v0, p0

    if-ltz p0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Previous freeze period too close to new period: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    :cond_8
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/time/LocalDate;

    invoke-static {p0, p1}, Landroid/app/admin/FreezePeriod;->distanceWithoutLeapYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-long p0, p0

    const-wide/16 v0, 0x5a

    cmp-long p2, p0, v0

    if-gtz p2, :cond_9

    goto :goto_0

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Combined freeze period exceeds maximum days: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->combinedPeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Current freeze dates inverted: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_0
    return-void
.end method

.method static greylist-max-o validatePeriods(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/app/admin/FreezePeriod;->canonicalizePeriods(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v1, p0, :cond_6

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_5

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/FreezePeriod;

    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_4

    if-lez p0, :cond_0

    add-int/lit8 v2, p0, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FreezePeriod;

    :goto_1
    if-eq v2, v1, :cond_3

    if-nez p0, :cond_1

    invoke-virtual {v2}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v1, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v4, v2, Landroid/app/admin/FreezePeriod;->mEndDay:I

    rsub-int v4, v4, 0x16d

    add-int/2addr v3, v4

    goto :goto_2

    :cond_1
    iget v3, v1, Landroid/app/admin/FreezePeriod;->mStartDay:I

    iget v4, v2, Landroid/app/admin/FreezePeriod;->mEndDay:I

    sub-int/2addr v3, v4

    :goto_2
    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Freeze periods "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " are too close together: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " days apart"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Freeze period "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is too long: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/admin/FreezePeriod;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " days"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->freezePeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->duplicateOrOverlapPeriods()Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method greylist-max-o after(Ljava/time/LocalDate;)Z
    .locals 0

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o contains(Ljava/time/LocalDate;)Z
    .locals 3

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt p1, p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v0, p1, :cond_3

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    if-gt p1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method greylist-max-o getEffectiveEndDay()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    return p0

    :cond_0
    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    add-int/lit16 p0, p0, 0x16d

    return p0
.end method

.method public whitelist getEnd()Ljava/time/MonthDay;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/FreezePeriod;->mEnd:Ljava/time/MonthDay;

    return-object p0
.end method

.method greylist-max-o getLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->getEffectiveEndDay()I

    move-result v0

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist getStart()Ljava/time/MonthDay;
    .locals 0

    iget-object p0, p0, Landroid/app/admin/FreezePeriod;->mStart:Ljava/time/MonthDay;

    return-object p0
.end method

.method greylist-max-o isWrapped()Z
    .locals 1

    iget v0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method greylist-max-o toCurrentOrFutureRealDates(Ljava/time/LocalDate;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/app/admin/FreezePeriod;->dayOfYearDisregardLeapYear(Ljava/time/LocalDate;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/app/admin/FreezePeriod;->contains(Ljava/time/LocalDate;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-gt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    if-le v1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/admin/FreezePeriod;->isWrapped()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    move v0, v2

    :goto_0
    iget v1, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {v3, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object p0

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MMM dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/app/admin/FreezePeriod;->mStartDay:I

    const/16 v3, 0x7d1

    invoke-static {v3, v2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/admin/FreezePeriod;->mEndDay:I

    invoke-static {v3, p0}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
