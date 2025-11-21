.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Axis;,
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$AlignmentMode;,
        Landroid/widget/GridLayout$Orientation;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALIGNMENT_MODE:I = 0x6

.field public static final whitelist ALIGN_BOUNDS:I = 0x0

.field public static final whitelist ALIGN_MARGINS:I = 0x1

.field public static final whitelist BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o CAN_STRETCH:I = 0x2

.field public static final whitelist CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o COLUMN_COUNT:I = 0x3

.field private static final greylist-max-o COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final greylist-max-o DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final greylist-max-o DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final greylist-max-o DEFAULT_COUNT:I = -0x80000000

.field private static final greylist-max-o DEFAULT_ORDER_PRESERVED:Z = true

.field private static final greylist-max-o DEFAULT_ORIENTATION:I = 0x0

.field private static final greylist-max-o DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final whitelist END:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist FILL:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-o INFLEXIBLE:I = 0x0

.field private static final greylist-max-o LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist LEFT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o LOG_PRINTER:Landroid/util/Printer;

.field static final greylist-max-o MAX_SIZE:I = 0x186a0

.field static final greylist-max-o NO_PRINTER:Landroid/util/Printer;

.field private static final greylist-max-o ORIENTATION:I = 0x0

.field public static final whitelist RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o ROW_COUNT:I = 0x1

.field private static final greylist-max-o ROW_ORDER_PRESERVED:I = 0x2

.field public static final whitelist START:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist TOP:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist UNDEFINED:I = -0x80000000

.field static final greylist-max-r UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o UNINITIALIZED_HASH:I = 0x0

.field private static final greylist-max-o USE_DEFAULT_MARGINS:I = 0x5

.field public static final whitelist VERTICAL:I = 0x1


# instance fields
.field greylist-max-o mAlignmentMode:I

.field greylist-max-o mDefaultGap:I

.field final greylist-max-o mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field greylist-max-o mLastLayoutParamsHashCode:I

.field greylist-max-o mOrientation:I

.field greylist-max-o mPrinter:Landroid/util/Printer;

.field greylist-max-o mUseDefaultMargins:Z

.field final greylist-max-o mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleInvalidParams(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    new-instance v1, Landroid/widget/GridLayout$4;

    invoke-direct {v1}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v1, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    sput-object v1, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sput-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v2

    sput-object v2, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v0}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iput v3, p0, Landroid/widget/GridLayout;->mOrientation:I

    iput-boolean v3, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    iput v1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    iput v3, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    sget-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050182

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v6, Lcom/android/internal/R$styleable;->GridLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/high16 p0, -0x80000000

    :try_start_0
    invoke-virtual {v8, v1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 p1, 0x3

    invoke-virtual {v8, p1, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual {v8, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setOrientation(I)V

    const/4 p0, 0x5

    invoke-virtual {v8, p0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    const/4 p0, 0x6

    invoke-virtual {v8, p0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    const/4 p0, 0x2

    invoke-virtual {v8, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    const/4 p0, 0x4

    invoke-virtual {v8, p0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static greylist-max-o adjust(II)I
    .locals 0

    add-int/2addr p1, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method static greylist-max-o append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static greylist-max-o canStretch(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    iget-object p1, p1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v1, p1, Landroid/widget/GridLayout$Interval;->min:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/widget/GridLayout$Interval;->min:I

    if-gez v1, :cond_2

    const-string v1, " indices must be positive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_2
    iget p0, p0, Landroid/widget/GridLayout$Axis;->definedCount:I

    if-eq p0, v2, :cond_5

    iget p2, p1, Landroid/widget/GridLayout$Interval;->max:I

    const-string v1, " count"

    if-le p2, p0, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/widget/GridLayout$Interval;->size()I

    move-result p1

    if-le p1, p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " span mustn\'t exceed the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static greylist-max-o clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr p2, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private greylist-max-o computeLayoutParamsHashCode()I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private greylist-max-o consistencyCheck()V
    .locals 2

    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    :cond_1
    return-void
.end method

.method private static greylist-max-o createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$5;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private greylist-max-o drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result p0

    sub-int p2, p0, p2

    int-to-float v1, p2

    int-to-float v2, p3

    sub-int/2addr p0, p4

    int-to-float v3, p0

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object p0, p1

    move-object v5, p6

    int-to-float p1, p2

    int-to-float p2, p3

    int-to-float p3, p4

    int-to-float p4, p5

    move-object p5, v5

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static greylist-max-o fits([IIII)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    aget v0, p0, p2

    if-le v0, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static greylist-max-o getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 3

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    and-int/2addr p0, v1

    shr-int/2addr p0, v2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    const/4 v1, 0x3

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    const p1, 0x800003

    if-eq p0, p1, :cond_3

    const p1, 0x800005

    if-eq p0, p1, :cond_2

    sget-object p0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_2
    sget-object p0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_3
    sget-object p0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_4
    sget-object p0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    sget-object p0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_6
    sget-object p0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_8
    sget-object p0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    return-object p0

    :cond_9
    sget-object p0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    return-object p0
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 4

    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    iget-object p2, p2, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v3, p4

    :goto_2
    if-eqz v3, :cond_5

    iget p2, p2, Landroid/widget/GridLayout$Interval;->min:I

    if-nez p2, :cond_6

    goto :goto_3

    :cond_5
    iget p2, p2, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    if-ne p2, v0, :cond_6

    :goto_3
    move v1, v2

    :cond_6
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Landroid/widget/Space;

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result p0

    return p0
.end method

.method private greylist-max-o getMargin(Landroid/view/View;ZZ)I
    .locals 2

    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p0

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    iget-object p0, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p3, :cond_4

    iget p0, p0, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget p0, p0, Landroid/widget/GridLayout$Interval;->max:I

    :goto_3
    aget p0, v0, p0

    return p0
.end method

.method private greylist-max-o getMeasurement(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private greylist-max-o getTotalMargin(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o handleInvalidParams(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method private greylist-max-o invalidateValues()V
    .locals 2

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    iget-object p0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method static greylist-max-o max2([II)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private greylist-max-o measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result p0

    invoke-static {p3, p0, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o measureChildrenWithMargins(IIZ)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move-object v3, p0

    move v5, p1

    move v6, p2

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    if-eqz p3, :cond_1

    iget v7, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v8, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_1
    move v5, p1

    move v6, p2

    iget p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p2, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object p2, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    invoke-static {p2, p1}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v7

    sget-object v8, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v7, v8, :cond_6

    iget-object p2, p2, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p1, :cond_4

    iget-object v7, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v7, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_3
    invoke-virtual {v7}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v7

    iget v8, p2, Landroid/widget/GridLayout$Interval;->max:I

    aget v8, v7, v8

    iget p2, p2, Landroid/widget/GridLayout$Interval;->min:I

    aget p2, v7, p2

    sub-int/2addr v8, p2

    invoke-direct {p0, v4, p1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result p2

    sub-int v7, v8, p2

    if-eqz p1, :cond_5

    iget v8, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_5
    iget p1, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object v3, p0

    move v8, v7

    move v7, p1

    invoke-direct/range {v3 .. v8}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_6
    move-object v3, p0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object p0, v3

    move p1, v5

    move p2, v6

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static greylist-max-o procrusteanFill([IIII)V
    .locals 1

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static greylist-max-o setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    new-instance p1, Landroid/widget/GridLayout$Interval;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    return-void
.end method

.method public static whitelist spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(IF)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(IIF)Landroid/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 7

    new-instance v0, Landroid/widget/GridLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout-IA;)V

    return-object v0
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o validateLayoutParams()V
    .locals 14

    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    iget v3, v2, Landroid/widget/GridLayout$Axis;->definedCount:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v2, v2, Landroid/widget/GridLayout$Axis;->definedCount:I

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    new-array v3, v2, [I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_3
    if-ge v5, v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_3

    iget-object v9, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    :cond_3
    iget-object v9, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_4
    iget-object v10, v9, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-boolean v9, v9, Landroid/widget/GridLayout$Spec;->startDefined:Z

    invoke-virtual {v10}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v11

    if-eqz v9, :cond_4

    iget v6, v10, Landroid/widget/GridLayout$Interval;->min:I

    :cond_4
    if-eqz v0, :cond_5

    iget-object v10, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_5

    :cond_5
    iget-object v10, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_5
    iget-object v12, v10, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-boolean v10, v10, Landroid/widget/GridLayout$Spec;->startDefined:Z

    invoke-static {v12, v10, v2}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v13

    if-eqz v10, :cond_6

    iget v7, v12, Landroid/widget/GridLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_b

    if-eqz v9, :cond_7

    if-nez v10, :cond_a

    :cond_7
    :goto_6
    add-int v9, v7, v13

    invoke-static {v3, v6, v7, v9}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    if-gt v9, v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_6

    :cond_a
    add-int v9, v7, v13

    add-int v10, v6, v11

    invoke-static {v3, v7, v9, v10}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    :cond_b
    if-eqz v0, :cond_c

    invoke-static {v8, v6, v11, v7, v13}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    :cond_c
    invoke-static {v8, v7, v13, v6, v11}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    :goto_7
    add-int/2addr v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/widget/GridLayout$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    invoke-direct {p0, p1, v1}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 0

    new-instance p0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 0

    sget-boolean p0, Landroid/widget/GridLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz p0, :cond_1

    instance-of p0, p1, Landroid/widget/GridLayout$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroid/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroid/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/GridLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getAlignmentMode()I
    .locals 0

    iget p0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    return p0
.end method

.method public whitelist getColumnCount()I
    .locals 0

    iget-object p0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result p0

    return p0
.end method

.method final greylist-max-o getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/GridLayout$LayoutParams;

    return-object p0
.end method

.method greylist-max-o getMargin1(Landroid/view/View;ZZ)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method final greylist-max-o getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist getOrientation()I
    .locals 0

    iget p0, p0, Landroid/widget/GridLayout;->mOrientation:I

    return p0
.end method

.method public greylist-max-o getPrinter()Landroid/util/Printer;
    .locals 0

    iget-object p0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object p0
.end method

.method public whitelist getRowCount()I
    .locals 0

    iget-object p0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result p0

    return p0
.end method

.method public whitelist getUseDefaultMargins()Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    return p0
.end method

.method public whitelist isColumnOrderPreserved()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result p0

    return p0
.end method

.method public whitelist isRowOrderPreserved()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {p0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result p0

    return p0
.end method

.method protected greylist-max-o onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 13

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x32

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->top:I

    add-int v3, v1, v2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Insets;->left:I

    add-int v7, v1, v2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->right:I

    sub-int v8, v1, v2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int v5, v1, v0

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v9, v0, Landroid/widget/GridLayout$Axis;->locations:[I

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    array-length v11, v9

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_0

    aget v0, v9, v12

    add-int v2, v7, v0

    move v4, v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    move p0, v3

    add-int/lit8 v12, v12, 0x1

    move-object p0, v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move p0, v3

    iget-object p1, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iget-object p1, p1, Landroid/widget/GridLayout$Axis;->locations:[I

    if-eqz p1, :cond_1

    array-length v9, p1

    :goto_1
    if-ge v10, v9, :cond_1

    aget v2, p1, v10

    add-int v3, p0, v2

    move v5, v3

    move v2, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v4}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    invoke-virtual {p0, v3, v1, v4}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v6

    invoke-virtual {p0, v3, v4, v1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    invoke-virtual {p0, v3, v1, v1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v7

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 28

    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/widget/GridLayout;->consistencyCheck()V

    sub-int v6, p4, p2

    sub-int v0, p5, p3

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v9

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    iget-object v3, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v4, v6, v7

    sub-int/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Axis;->layout(I)V

    iget-object v3, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    sub-int/2addr v0, v8

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/GridLayout$Axis;->layout(I)V

    iget-object v0, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v10

    iget-object v0, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v11

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_4

    invoke-virtual {v1, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p2, v8

    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    iget-object v3, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v0, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iget-object v4, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-object v5, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v15, v4, Landroid/widget/GridLayout$Interval;->min:I

    aget v15, v10, v15

    iget v13, v5, Landroid/widget/GridLayout$Interval;->min:I

    aget v13, v11, v13

    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    aget v4, v10, v4

    iget v5, v5, Landroid/widget/GridLayout$Interval;->max:I

    aget v5, v11, v5

    sub-int v16, v4, v15

    sub-int v17, v5, v13

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v5

    move/from16 p2, v5

    move/from16 p4, v6

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v6

    invoke-static {v3, v4}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v3

    invoke-static {v0, v5}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    iget-object v5, v1, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v5}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/GridLayout$Bounds;

    iget-object v4, v1, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$Bounds;

    move/from16 p5, v7

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v18

    move-object/from16 p3, v5

    sub-int v5, v16, v18

    invoke-virtual {v3, v2, v5}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v18

    invoke-virtual {v4, v7}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v5

    sub-int v5, v17, v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v19

    invoke-direct {v1, v2, v7, v7}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v20

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v7}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v21

    invoke-direct {v1, v2, v7, v5}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v7

    invoke-direct {v1, v2, v5, v5}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v22

    add-int v23, v20, v7

    add-int v22, v21, v22

    move-object/from16 v24, v4

    add-int v4, p2, v23

    move/from16 v25, v5

    const/4 v5, 0x1

    move/from16 p1, v7

    move/from16 v26, v25

    move/from16 v7, p2

    move-object/from16 v25, v24

    move-object/from16 v24, v0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v27

    add-int v4, v6, v22

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 p2, v8

    move-object/from16 v0, v25

    move-object v8, v3

    move-object/from16 v3, v24

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v0

    sub-int v1, v16, v23

    invoke-virtual {v8, v2, v7, v1}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    sub-int v4, v17, v22

    invoke-virtual {v3, v2, v6, v4}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    add-int v15, v15, v18

    add-int v15, v15, v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v4

    if-nez v4, :cond_1

    add-int v7, p5, v20

    add-int/2addr v7, v15

    goto :goto_1

    :cond_1
    sub-int v6, p4, v1

    sub-int/2addr v6, v9

    sub-int v6, v6, p1

    sub-int v7, v6, v15

    :goto_1
    add-int v8, p2, v13

    add-int v8, v8, v19

    add-int/2addr v8, v0

    add-int v8, v8, v21

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eq v3, v0, :cond_3

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int/2addr v1, v7

    add-int/2addr v3, v8

    invoke-virtual {v2, v7, v8, v1, v3}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v6, p4

    move/from16 v7, p5

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 7

    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v2

    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget v4, p0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v2, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v3, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v2

    move v6, v4

    move v4, v2

    move v2, v6

    :goto_0
    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v1, p2, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "supplied LayoutParams are of the wrong type"

    invoke-static {p1}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method public whitelist setAlignmentMode(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setColumnCount(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setColumnOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public greylist-max-o setPrinter(Landroid/util/Printer;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    :cond_0
    iput-object p1, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-void
.end method

.method public whitelist setRowCount(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setRowOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setUseDefaultMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method
