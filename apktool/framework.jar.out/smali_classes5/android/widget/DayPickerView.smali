.class Landroid/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "DayPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerView$OnDaySelectedListener;
    }
.end annotation


# static fields
.field private static final blacklist ATTRS_TEXT_COLOR:[I

.field private static final blacklist DEFAULT_END_YEAR:I = 0x834

.field private static final blacklist DEFAULT_LAYOUT:I = 0x109007f

.field private static final blacklist DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mAdapter:Landroid/widget/DayPickerPagerAdapter;

.field private final blacklist mMaxDate:Landroid/icu/util/Calendar;

.field private final blacklist mMinDate:Landroid/icu/util/Calendar;

.field private final blacklist mNextButton:Landroid/widget/ImageButton;

.field private final blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private blacklist mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final blacklist mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private final blacklist mPrevButton:Landroid/widget/ImageButton;

.field private final blacklist mSelectedDay:Landroid/icu/util/Calendar;

.field private blacklist mTempCalendar:Landroid/icu/util/Calendar;

.field private final blacklist mViewPager:Lcom/android/internal/widget/ViewPager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccessibilityManager(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDaySelectedListener(Landroid/widget/DayPickerView;)Landroid/widget/DayPickerView$OnDaySelectedListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewPager(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateButtonVisibility(Landroid/widget/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    new-instance v0, Landroid/widget/DayPickerView$2;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$2;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Landroid/widget/DayPickerView$3;

    invoke-direct {v0, p0}, Landroid/widget/DayPickerView$3;-><init>(Landroid/widget/DayPickerView;)V

    iput-object v0, p0, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v3, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/DayPickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v5, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    const/4 p2, 0x2

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {v5, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x10

    const v0, 0x1030419

    invoke-virtual {v5, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    const v0, 0x1030418

    const/16 v3, 0xb

    invoke-virtual {v5, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/16 v4, 0xc

    const v6, 0x1030417

    invoke-virtual {v5, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Landroid/widget/DayPickerPagerAdapter;

    const v7, 0x109007d

    const v8, 0x102044d

    invoke-direct {v5, v2, v7, v8}, Landroid/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v5, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v5, p4}, Landroid/widget/DayPickerPagerAdapter;->setMonthTextAppearance(I)V

    invoke-virtual {v5, v0}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    invoke-virtual {v5, v4}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    invoke-virtual {v5, v6}, Landroid/widget/DayPickerPagerAdapter;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x109007f

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v2}, Landroid/widget/DayPickerView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const v0, 0x10204f0

    invoke-virtual {v1, v0}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, v1, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x102046a

    invoke-virtual {v1, v2}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v4, v1, Landroid/widget/DayPickerView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x10202dc

    invoke-virtual {v1, v4}, Landroid/widget/DayPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager;

    iput-object v4, v1, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v5, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v5, v1, Landroid/widget/DayPickerView;->mOnPageChangedListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    if-eqz p4, :cond_2

    iget-object v4, v1, Landroid/widget/DayPickerView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    invoke-virtual {v4, v5, v6, p1, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x76c

    const/4 v0, 0x1

    invoke-virtual {p4, p2, p1, v0}, Landroid/icu/util/Calendar;->set(III)V

    :cond_3
    invoke-virtual {p4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {p3, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x834

    const/16 p3, 0x1f

    invoke-virtual {p4, p2, v3, p3}, Landroid/icu/util/Calendar;->set(III)V

    :cond_4
    invoke-virtual {p4}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-ltz p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p2

    invoke-virtual {v1, p0}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/DayPickerView;->setMinDate(J)V

    invoke-virtual {v1, v8, v9}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    invoke-virtual {v1, p2, p3, p1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    iget-object p0, v1, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    new-instance p1, Landroid/widget/DayPickerView$1;

    invoke-direct {p1, v1}, Landroid/widget/DayPickerView$1;-><init>(Landroid/widget/DayPickerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxDate must be >= minDate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p2, p0

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr p2, v0

    return p2
.end method

.method private blacklist getPositionFromDay(J)I
    .locals 2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, v1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/widget/DayPickerView;->getDiffMonths(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private blacklist getTempCalendarForTime(J)Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object p0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method private blacklist setDate(JZZ)V
    .locals 4

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget-object p1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iget-object p1, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getTempCalendarForTime(J)Landroid/icu/util/Calendar;

    if-nez p4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object p4, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {p4, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result p1

    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object p0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p0}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method private blacklist updateButtonVisibility(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v3}, Landroid/widget/DayPickerPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public blacklist getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/DayPickerView;->getPositionFromDay(J)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v1}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object p1, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object p0, p0, Landroid/widget/DayPickerView;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p0, p3}, Landroid/widget/DayPickerPagerAdapter;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public blacklist getDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDayOfWeekTextAppearance()I
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->getDayOfWeekTextAppearance()I

    move-result p0

    return p0
.end method

.method public blacklist getDayTextAppearance()I
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->getDayTextAppearance()I

    move-result p0

    return p0
.end method

.method public blacklist getFirstDayOfWeek()I
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerPagerAdapter;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public blacklist getMaxDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinDate()J
    .locals 2

    iget-object p0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMostVisiblePosition()I
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p2, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p4, p5}, Lcom/android/internal/widget/ViewPager;->layout(IIII)V

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SimpleMonthView;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getMonthHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getCellWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v2

    sub-int v3, p2, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingLeft()I

    move-result v3

    sub-int v4, p3, p5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr p5, v3

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v2, p5, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, p5

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/SimpleMonthView;->getPaddingRight()I

    move-result p0

    sub-int/2addr p4, p0

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, p3

    sub-int p0, p4, p1

    add-int/2addr p5, v1

    invoke-virtual {v0, p0, v1, p4, p5}, Landroid/widget/ImageButton;->layout(IIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeightAndState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/DayPickerView;->setMeasuredDimension(II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Landroid/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    iget-object p0, p0, Landroid/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageButton;->measure(II)V

    return-void
.end method

.method public blacklist onRangeChanged()V
    .locals 3

    iget-object v0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    iget-object v1, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/widget/DayPickerPagerAdapter;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mSelectedDay:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    iget-object v0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/DayPickerView;->updateButtonVisibility(I)V

    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->requestLayout()V

    return-void
.end method

.method public blacklist setDate(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/DayPickerView;->setDate(JZ)V

    return-void
.end method

.method public blacklist setDate(JZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    return-void
.end method

.method public blacklist setDayOfWeekTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayOfWeekTextAppearance(I)V

    return-void
.end method

.method public blacklist setDayTextAppearance(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->setDayTextAppearance(I)V

    return-void
.end method

.method public blacklist setFirstDayOfWeek(I)V
    .locals 0

    iget-object p0, p0, Landroid/widget/DayPickerView;->mAdapter:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/DayPickerPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public blacklist setMaxDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public blacklist setMinDate(J)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DayPickerView;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/DayPickerView;->onRangeChanged()V

    return-void
.end method

.method public blacklist setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerView;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    return-void
.end method

.method public blacklist setPosition(I)V
    .locals 1

    iget-object p0, p0, Landroid/widget/DayPickerView;->mViewPager:Lcom/android/internal/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
