.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final blacklist mDayPickerView:Landroid/widget/DayPickerView;

.field private blacklist mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnDateChangeListener(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    iput-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    new-instance v1, Landroid/widget/DayPickerView;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v1, v0}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->getBoundsForDate(JLandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p2, p1, [I

    new-array p1, p1, [I

    iget-object v0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerView;->getLocationOnScreen([I)V

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    aget p2, p2, p0

    aget p1, p1, p0

    sub-int/2addr p2, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDateTextAppearance()I
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result p0

    return p0
.end method

.method public blacklist getFirstDayOfWeek()I
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public blacklist getMaxDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWeekDayTextAppearance()I
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result p0

    return p0
.end method

.method public blacklist setDate(J)V
    .locals 1

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public blacklist setDate(JZZ)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public blacklist setDateTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public blacklist setMaxDate(J)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    return-void
.end method

.method public blacklist setMinDate(J)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    return-void
.end method

.method public blacklist setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public blacklist setWeekDayTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    return-void
.end method
