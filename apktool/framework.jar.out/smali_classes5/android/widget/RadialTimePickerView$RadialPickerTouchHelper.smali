.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final greylist-max-o MASK_TYPE:I

.field private final greylist-max-o MASK_VALUE:I

.field private final greylist-max-o MINUTE_INCREMENT:I

.field private final greylist-max-o SHIFT_TYPE:I

.field private final greylist-max-o SHIFT_VALUE:I

.field private final greylist-max-o TYPE_HOUR:I

.field private final greylist-max-o TYPE_MINUTE:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    const/16 p1, 0xf

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    const/16 p1, 0x8

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    const/4 p1, 0x5

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    return-void
.end method

.method private greylist-max-o adjustPicker(I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v0

    const/16 v2, 0xc

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v3, 0x5

    div-int/2addr v0, v3

    const/16 v2, 0x37

    :goto_0
    add-int/2addr v0, p1

    mul-int/2addr v0, v3

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return-void
.end method

.method private greylist-max-o getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v2

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move p1, v0

    move v1, p1

    :goto_1
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr p1, v4

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr p0, v0

    sub-float v0, p1, v1

    float-to-int v0, v0

    sub-float v2, p0, v1

    float-to-int v2, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p2, v0, v2, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private greylist-max-o getCircularDiff(III)I
    .locals 0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 p1, p3, 0x2

    if-le p0, p1, :cond_0

    sub-int/2addr p3, p0

    return p3

    :cond_0
    return p0
.end method

.method private greylist-max-o getTypeFromId(I)I
    .locals 0

    and-int/lit8 p0, p1, 0xf

    return p0
.end method

.method private greylist-max-o getValueFromId(I)I
    .locals 0

    ushr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private greylist-max-o getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o getVirtualViewIdAfter(II)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    if-gt p2, v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, 0x5

    if-ge p2, v0, :cond_2

    if-le v1, v0, :cond_2

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_2
    const/16 p2, 0x3c

    if-ge v1, p2, :cond_3

    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method private greylist-max-o hour12To24(II)I
    .locals 1

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    add-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private greylist-max-o hour24To12(I)I
    .locals 0

    const/16 p0, 0xc

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    sub-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private greylist-max-o isVirtualViewSelected(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result p0

    if-ne p0, p2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p0

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private greylist-max-o makeId(II)I
    .locals 0

    shl-int/lit8 p0, p2, 0x8

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected greylist-max-o getVirtualViewAt(FF)I
    .locals 4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$smsnapOnly30s(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z

    move-result p1

    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2, v2, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I

    move-result p1

    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result p1

    :goto_0
    invoke-direct {p0, v1, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2, v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result p2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result v0

    const/16 v1, 0x3c

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v2

    invoke-direct {p0, v0, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result p2

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected greylist-max-o getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    if-gt v0, v2, :cond_3

    invoke-direct {p0, v1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    if-le v0, v1, :cond_2

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected greylist-max-o onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 p3, 0x10

    if-ne p2, p3, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result p1

    :goto_0
    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    return p3

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return p3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist-max-o onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected greylist-max-o onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3

    :cond_2
    invoke-direct {p0, p3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return p3
.end method
