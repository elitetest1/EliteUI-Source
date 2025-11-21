.class public final Landroid/widget/DatePicker$InspectionCompanion;
.super Ljava/lang/Object;
.source "DatePicker$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/DatePicker;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCalendarViewShownId:I

.field private blacklist mDatePickerModeId:I

.field private blacklist mDayOfMonthId:I

.field private blacklist mFirstDayOfWeekId:I

.field private blacklist mMaxDateId:I

.field private blacklist mMinDateId:I

.field private blacklist mMonthId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSpinnersShownId:I

.field private blacklist mYearId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 4

    const-string v0, "calendarViewShown"

    const v1, 0x101034c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v1, "spinner"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v3, "calendar"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v0, "datePickerMode"

    const v3, 0x10104b3

    invoke-interface {p1, v0, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    const-string v0, "dayOfMonth"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    const-string v0, "firstDayOfWeek"

    const v3, 0x101033d

    invoke-interface {p1, v0, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    const-string v0, "maxDate"

    const v3, 0x1010340

    invoke-interface {p1, v0, v3}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    const-string v0, "minDate"

    const v3, 0x101033f

    invoke-interface {p1, v0, v3}, Landroid/view/inspector/PropertyMapper;->mapLong(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    const-string v0, "month"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    const-string/jumbo v0, "spinnersShown"

    const v3, 0x101034b

    invoke-interface {p1, v0, v3}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    const-string/jumbo v0, "year"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    iput-boolean v2, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mCalendarViewShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getCalendarViewShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDatePickerModeId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mDayOfMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mFirstDayOfWeekId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getFirstDayOfWeek()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMaxDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMinDateId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMinDate()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroid/view/inspector/PropertyReader;->readLong(IJ)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mMonthId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mSpinnersShownId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getSpinnersShown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget p0, p0, Landroid/widget/DatePicker$InspectionCompanion;->mYearId:I

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_0
    new-instance p0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/DatePicker;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePicker$InspectionCompanion;->readProperties(Landroid/widget/DatePicker;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
