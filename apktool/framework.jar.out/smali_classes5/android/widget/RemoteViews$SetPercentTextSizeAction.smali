.class Landroid/widget/RemoteViews$SetPercentTextSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPercentTextSizeAction"
.end annotation


# instance fields
.field blacklist mHeightPercent:F

.field blacklist mMaxSize:F

.field blacklist mMinSize:F

.field blacklist mText:Ljava/lang/String;

.field blacklist mWidthPercent:F


# direct methods
.method constructor blacklist <init>(IFFFFLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mHeightPercent:F

    iput p3, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mWidthPercent:F

    iput p4, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMinSize:F

    iput p5, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMaxSize:F

    iput-object p6, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mHeightPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mWidthPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMinSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMaxSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mText:Ljava/lang/String;

    return-void
.end method

.method private blacklist calculateTextSize(Landroid/content/Context;IIII)F
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p4, p5, p0, p0}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p3, p0, p2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    return p1
.end method

.method private blacklist setTextPercentSize(IILandroid/view/View;)V
    .locals 8

    instance-of v0, p3, Landroid/widget/TextView;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_0

    int-to-float p1, p1

    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mWidthPercent:F

    mul-float/2addr p1, v0

    float-to-int v4, p1

    int-to-float p1, p2

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mHeightPercent:F

    mul-float/2addr p1, p2

    float-to-int v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p1, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMinSize:F

    float-to-int v6, p1

    iget p1, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMaxSize:F

    float-to-int v7, p1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->calculateTextSize(Landroid/content/Context;IIII)F

    move-result p0

    check-cast p3, Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p3, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Text auto size is stopped by "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "Auto TextSize is only applied at TextView"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 1

    iget p3, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mViewId:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p3, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v0, "RemoteViews"

    if-nez p3, :cond_1

    const-string p0, "The setPercentSize API is only available in AppWidgetHostView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2, p1}, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->setTextPercentSize(IILandroid/view/View;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Container\'s size is not measured yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getActionTag()I
    .locals 0

    const/16 p0, 0x70

    return p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mHeightPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mWidthPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMinSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mMaxSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Landroid/widget/RemoteViews$SetPercentTextSizeAction;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
