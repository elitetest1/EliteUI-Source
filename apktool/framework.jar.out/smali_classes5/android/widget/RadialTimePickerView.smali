.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final greylist-max-o AM:I = 0x0

.field private static final greylist-max-o ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final greylist-max-o ANIM_DURATION_TOUCH:I = 0x3c

.field private static final greylist-max-o COS_30:[F

.field private static final greylist-max-o DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final greylist-max-o DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final greylist-max-o HOURS:I = 0x0

.field private static final greylist-max-o HOURS_INNER:I = 0x2

.field private static final greylist-max-o HOURS_IN_CIRCLE:I = 0xc

.field private static final greylist-max-o HOURS_NUMBERS:[I

.field private static final greylist-max-o HOURS_NUMBERS_24:[I

.field public static final greylist-max-o MINUTES:I = 0x1

.field private static final greylist-max-o MINUTES_IN_CIRCLE:I = 0x3c

.field private static final greylist-max-o MINUTES_NUMBERS:[I

.field private static final greylist-max-o MISSING_COLOR:I = -0xff01

.field private static final greylist-max-o NUM_POSITIONS:I = 0xc

.field private static final greylist-max-o PM:I = 0x1

.field private static final greylist-max-o SELECTOR_CIRCLE:I = 0x0

.field private static final greylist-max-o SELECTOR_DOT:I = 0x1

.field private static final greylist-max-o SELECTOR_LINE:I = 0x2

.field private static final greylist-max-o SIN_30:[F

.field private static final greylist-max-o SNAP_PREFER_30S_MAP:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final greylist-max-o HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAmOrPm:I

.field private greylist-max-o mCenterDotRadius:I

.field greylist-max-o mChangedDuringTouch:Z

.field private greylist-max-o mCircleRadius:I

.field private greylist-max-o mDisabledAlpha:F

.field private greylist-max-o mHalfwayDist:I

.field private final greylist-max-o mHours12Texts:[Ljava/lang/String;

.field private greylist-max-o mHoursToMinutes:F

.field private greylist-max-o mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final greylist-max-o mInnerHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mInnerTextHours:[Ljava/lang/String;

.field private final greylist-max-o mInnerTextX:[F

.field private final greylist-max-o mInnerTextY:[F

.field private greylist-max-o mInputEnabled:Z

.field private greylist-max-o mIs24HourMode:Z

.field private greylist-max-o mIsOnInnerCircle:Z

.field private greylist-max-o mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private greylist-max-o mMaxDistForOuterNumber:I

.field private greylist-max-o mMinDistForInnerNumber:I

.field private greylist-max-o mMinutesText:[Ljava/lang/String;

.field private final greylist-max-o mMinutesTexts:[Ljava/lang/String;

.field private final greylist-max-o mOuterHours24Texts:[Ljava/lang/String;

.field private greylist-max-o mOuterTextHours:[Ljava/lang/String;

.field private final greylist-max-o mOuterTextX:[[F

.field private final greylist-max-o mOuterTextY:[[F

.field private final greylist-max-o mPaint:[Landroid/graphics/Paint;

.field private final greylist-max-o mPaintBackground:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintCenter:Landroid/graphics/Paint;

.field private final greylist-max-o mPaintSelector:[Landroid/graphics/Paint;

.field private final greylist-max-o mSelectionDegrees:[I

.field private greylist-max-o mSelectorColor:I

.field private greylist-max-o mSelectorDotColor:I

.field private greylist-max-o mSelectorDotRadius:I

.field private final greylist-max-o mSelectorPath:Landroid/graphics/Path;

.field private greylist-max-o mSelectorRadius:I

.field private greylist-max-o mSelectorStroke:I

.field private greylist-max-o mShowHours:Z

.field private final greylist-max-o mTextColor:[Landroid/content/res/ColorStateList;

.field private final greylist-max-o mTextInset:[I

.field private final greylist-max-o mTextSize:[I

.field private final greylist-max-o mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final greylist-max-o mTypeface:Landroid/graphics/Typeface;

.field private greylist-max-o mXCenter:I

.field private greylist-max-o mYCenter:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHoursToMinutes(Landroid/widget/RadialTimePickerView;)F
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHoursToMinutes(Landroid/widget/RadialTimePickerView;F)V
    .locals 0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsnapOnly30s(II)I
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    const/4 v1, 0x0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v1

    sget-object v4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v1

    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/graphics/Paint;

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    new-array v7, v4, [Landroid/content/res/ColorStateList;

    iput-object v7, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    new-array v7, v4, [I

    iput-object v7, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    new-array v8, v1, [I

    const/4 v9, 0x1

    aput v0, v8, v9

    const/4 v10, 0x0

    aput v1, v8, v10

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    new-array v8, v1, [I

    aput v0, v8, v9

    aput v1, v8, v10

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    new-array v8, v0, [F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    new-array v8, v0, [F

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    new-array v8, v1, [I

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    iput-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    move/from16 v11, p4

    invoke-virtual {p0, p2, p3, v11}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v8, 0x1010033

    invoke-virtual {p1, v8, p2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    const-string/jumbo p1, "sans-serif"

    invoke-static {p1, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v2, v10

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v2, v10

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v2, v9

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v2, v9

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v10

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v9

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    aput-object p1, v5, v1

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    aget-object p1, v5, v1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050605

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    const p2, 0x1050606

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    const p2, 0x1050604

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    const p2, 0x10505fc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    const p2, 0x105060b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v7, v10

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v7, v9

    const p2, 0x105060a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v7, v1

    const p2, 0x1050609

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v4, v10

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    aput p2, v4, v9

    const p2, 0x1050608

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, v4, v1

    iput-boolean v9, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    iput-boolean v10, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    iput v10, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    new-instance p1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {p1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v9}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p2, v10, v10}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p1, v10}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    invoke-virtual {p0, v9}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method private greylist-max-o animatePicker(ZJ)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private static greylist-max-o calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 0

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result p4

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    add-float/2addr p4, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p4, p0

    sub-float/2addr p3, p4

    const/4 p0, 0x0

    :goto_0
    const/16 p4, 0xc

    if-ge p0, p4, :cond_0

    sget-object p4, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p2, p4

    aput p4, p5, p0

    sget-object p4, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget p4, p4, p0

    mul-float/2addr p4, p1

    sub-float p4, p3, p4

    aput p4, p6, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o calculatePositionsHours()V
    .locals 11

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v4, v1, v2

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v6, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v4 .. v10}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    :cond_0
    return-void
.end method

.method private greylist-max-o calculatePositionsMinutes()V
    .locals 10

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v0, v2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v0, v0, v2

    int-to-float v7, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v0, v2

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, p0, v2

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    return-void
.end method

.method private greylist-max-o drawCenter(Landroid/graphics/Canvas;F)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float p2, p2

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v1, v1

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private greylist-max-o drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private greylist-max-o drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int p3, v0

    if-lez p3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private greylist-max-o drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 15

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v13, 0x0

    aget v1, v1, v13

    int-to-float v2, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v1, v13

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v1, v13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v1, v13

    const/4 v14, 0x1

    if-eqz p3, :cond_0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v1, :cond_0

    move v10, v14

    goto :goto_0

    :cond_0
    move v10, v13

    :goto_0
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v1, v13

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v2, v13

    if-eqz p3, :cond_1

    iget-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v2, :cond_1

    move v10, v14

    goto :goto_1

    :cond_1
    move v10, v13

    :goto_1
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v2, v13

    move-object v0, p0

    move/from16 v9, p2

    move/from16 v12, p3

    move v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    :cond_2
    return-void
.end method

.method private greylist-max-o drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-lez p3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private greylist-max-o drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 13

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v6, v2

    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v7, v2

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v8, v2

    iget-object v9, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v9, v2

    move/from16 v12, p3

    move-object v0, p0

    move v9, p2

    move/from16 v10, p3

    move v2, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    return-void
.end method

.method private greylist-max-o drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v7, v6, v3

    iget-object v8, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/2addr v3, v5

    aget v3, v8, v3

    rem-int/lit8 v9, v3, 0x1e

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/4 v12, 0x1

    aget v6, v6, v12

    aget v8, v8, v12

    rem-int/lit8 v13, v8, 0x1e

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    iget v13, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    iget v14, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v14, v14

    iget v15, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v7, v6, v15}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    sub-float/2addr v14, v6

    int-to-float v3, v3

    int-to-float v6, v8

    iget v7, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v3, v6, v7}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget v3, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v3, v3

    move v15, v5

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v14

    add-float/2addr v3, v4

    iget v4, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    move/from16 v16, v12

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v14

    sub-float/2addr v4, v11

    iget-object v11, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v8, v11, v8

    iget v11, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v13

    invoke-virtual {v1, v3, v4, v11, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v11, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_3
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v9, v10, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    iget-object v5, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v16

    iget v8, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v8, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-virtual {v1, v3, v4, v8, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-float/2addr v14, v11

    iget v6, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v7, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v8, v7

    mul-double/2addr v8, v2

    double-to-int v8, v8

    add-int/2addr v6, v8

    iget v8, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-double v9, v7

    mul-double/2addr v9, v4

    double-to-int v7, v9

    sub-int/2addr v8, v7

    float-to-double v9, v14

    mul-double/2addr v2, v9

    double-to-int v2, v2

    add-int/2addr v6, v2

    int-to-float v3, v6

    mul-double/2addr v9, v4

    double-to-int v2, v9

    sub-int/2addr v8, v2

    int-to-float v4, v8

    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v2, v15

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    iget v0, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    move/from16 v17, v2

    move v2, v0

    move-object v0, v1

    move/from16 v1, v17

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private greylist-max-o drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 8

    move-object/from16 v0, p8

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 p2, p11

    int-to-float p2, p2

    const/high16 p3, 0x41f00000    # 30.0f

    div-float/2addr p2, p3

    float-to-int p3, p2

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p2, v1

    const/16 v1, 0xc

    rem-int/2addr p2, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    if-eq p3, v3, :cond_1

    if-ne p2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz p12, :cond_2

    if-nez v4, :cond_2

    move/from16 v5, p9

    goto :goto_4

    :cond_2
    if-eqz p10, :cond_3

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    const/16 v5, 0x8

    or-int/2addr v4, v5

    invoke-static {v4}, Landroid/util/StateSet;->get(I)[I

    move-result-object v4

    invoke-virtual {p4, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v5, p9

    invoke-direct {p0, v4, v5}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v4, p5, v3

    aget v6, p6, v3

    aget v7, p7, v3

    invoke-virtual {p1, v4, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private greylist-max-o getDegreesForHour(I)I
    .locals 1

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v0, 0xc

    if-eqz p0, :cond_0

    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private greylist-max-o getDegreesForMinute(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private greylist-max-o getDegreesFromXY(FFZ)I
    .locals 8

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    move v0, v2

    :goto_0
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-double v2, p1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    mul-double v4, v2, v2

    mul-double v6, p0, p0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    int-to-double v6, v0

    cmpg-double p2, v4, v6

    if-ltz p2, :cond_3

    if-eqz p3, :cond_1

    int-to-double p2, v1

    cmpl-double p2, v4, p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    if-gez p0, :cond_2

    add-int/lit16 p0, p0, 0x168

    :cond_2
    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private greylist-max-o getHourForDegrees(IZ)I
    .locals 2

    div-int/lit8 p1, p1, 0x1e

    const/16 v0, 0xc

    rem-int/2addr p1, v0

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    add-int/2addr p1, v0

    return p1

    :cond_1
    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_2

    add-int/2addr p1, v0

    :cond_2
    return p1
.end method

.method private greylist-max-o getInnerCircleForHour(I)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 p0, 0xc

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o getInnerCircleFromXY(FF)Z
    .locals 4

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    iget p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    mul-double/2addr v2, v2

    mul-double/2addr p1, p1

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v2, p0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private greylist-max-o getMinuteForDegrees(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x6

    return p1
.end method

.method private greylist-max-o getMultipliedAlpha(II)I
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double p0, p0

    int-to-double v0, p2

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private greylist-max-o handleTouchInput(FFZZ)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v2, 0x3c

    invoke-direct {p0, p2, v2, v3}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-static {p1, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    iget-boolean p2, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget p2, p2, v1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput p1, v0, v1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result p1

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0x168

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v0, p2, v2

    if-eq v0, p1, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    aput p1, p2, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    move p2, v0

    move v0, v2

    :goto_3
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0, p1, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_9

    :cond_8
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    :cond_9
    return v2
.end method

.method private greylist-max-o initData()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o initHoursAndMinutesText()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    sget-object v3, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    sget-object v2, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static greylist-max-o preparePrefer30sMap()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    move v4, v1

    move v3, v2

    move v2, v0

    :goto_0
    const/16 v5, 0x169

    if-ge v0, v5, :cond_3

    sget-object v5, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v2, v5, v0

    if-ne v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x168

    if-ne v2, v3, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    rem-int/lit8 v3, v2, 0x1e

    if-nez v3, :cond_1

    const/16 v3, 0xe

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private greylist-max-o setCurrentHourInternal(IZZ)V
    .locals 4

    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    if-eqz p1, :cond_1

    rem-int/lit8 v0, p1, 0x18

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v1

    iget v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v3, v0, :cond_2

    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v3, v1, :cond_3

    :cond_2
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    iput-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_4
    return-void
.end method

.method private greylist-max-o setCurrentMinuteInternal(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, v2, p1, p2}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    :cond_0
    return-void
.end method

.method private greylist-max-o showPicker(ZZ)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 p2, 0x0

    iput-object p2, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    :goto_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method private static greylist-max-o snapOnly30s(II)I
    .locals 3

    div-int/lit8 v0, p0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v1, v0, 0x1e

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-ne p0, v0, :cond_2

    add-int/lit8 v0, v0, -0x1e

    return v0

    :cond_1
    sub-int p1, p0, v0

    sub-int p0, v1, p0

    if-ge p1, p0, :cond_3

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private static greylist-max-o snapPrefer30s(I)I
    .locals 1

    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method greylist-max-o applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RadialTimePickerView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x3

    invoke-virtual {v4, p0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const p3, -0xff01

    if-nez p0, :cond_0

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    :cond_0
    const/4 v2, 0x0

    aput-object p0, p2, v2

    iget-object p0, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_1
    const/4 p2, 0x2

    aput-object p1, p0, p2

    iget-object p0, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    aget-object p2, p0, v2

    aput-object p2, p0, p1

    const/4 p0, 0x5

    invoke-virtual {v4, p0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/16 p1, 0x28

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/util/StateSet;->get(I)[I

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    :cond_2
    iget-object p0, v0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Landroid/util/StateSet;->get(I)[I

    move-result-object p0

    iput p3, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    iget-object p1, v0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object p1, p1, v2

    invoke-virtual {p1, p0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    iput p0, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    iget-object p0, v0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const p1, 0x10604f4

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const/4 p2, 0x4

    invoke-virtual {v4, p2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o getAmOrPm()I
    .locals 0

    iget p0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return p0
.end method

.method public greylist-max-o getCurrentHour()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result p0

    return p0
.end method

.method public greylist-max-o getCurrentItemShowing()I
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist-max-o getCurrentMinute()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result p0

    return p0
.end method

.method public greylist-max-o initialize(IIZ)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p3}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    invoke-direct {p0, p2, p3}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget p3, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object p3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget p4, p3, p2

    sub-int p5, p1, p4

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr p5, v0

    iput p5, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    const/4 p5, 0x0

    aget p3, p3, p5

    sub-int p5, p1, p3

    add-int/2addr p5, v0

    iput p5, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    add-int/2addr p3, p4

    div-int/2addr p3, p2

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Landroid/view/flags/Flags;->enableArrowIconOnHoverWhenClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3e8

    goto :goto_0

    :cond_1
    const/16 p1, 0x3ea

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_5

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v0, :cond_3

    move v0, v1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v4, p1, v2, v0}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    :cond_5
    return v1
.end method

.method public greylist-max-o setAmOrPm(I)Z
    .locals 1

    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    iget-object p0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o setCurrentHour(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    return-void
.end method

.method public greylist-max-o setCurrentItemShowing(IZ)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "ClockView does not support showing item "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadialTimePickerView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    return-void
.end method

.method public greylist-max-o setCurrentMinute(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    return-void
.end method

.method public greylist-max-o setInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    return-void
.end method

.method public greylist-max-o setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    return-void
.end method

.method public greylist-max-o showHours(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method

.method public greylist-max-o showMinutes(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    return-void
.end method
