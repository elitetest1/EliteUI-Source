.class Landroid/widget/DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 5

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateInputState(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmDaySpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    if-ne p3, v4, :cond_0

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmMonthSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_3

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-ne p3, p1, :cond_4

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p2}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmYearSpinner(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    :goto_0
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p3}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$fgetmTempDate(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$msetDate(Landroid/widget/DatePickerSpinnerDelegate;III)V

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateSpinners(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p1}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mupdateCalendarView(Landroid/widget/DatePickerSpinnerDelegate;)V

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate$1;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {p0}, Landroid/widget/DatePickerSpinnerDelegate;->-$$Nest$mnotifyDateChanged(Landroid/widget/DatePickerSpinnerDelegate;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
