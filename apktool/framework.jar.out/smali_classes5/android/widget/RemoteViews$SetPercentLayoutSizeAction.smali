.class Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPercentLayoutSizeAction"
.end annotation


# instance fields
.field blacklist mHeightPercent:F

.field blacklist mMaxHeightSize:F

.field blacklist mMaxWidthSize:F

.field blacklist mPercentPolicy:I

.field blacklist mPercentType:I

.field blacklist mRatio:F

.field blacklist mWidthPercent:F


# direct methods
.method constructor blacklist <init>(IFFFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    iput p3, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentPolicy:I

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentType:I

    iput p4, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxWidthSize:F

    iput p5, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxHeightSize:F

    iput p6, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    return-void
.end method

.method constructor blacklist <init>(IFIIFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mViewId:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p3, p1, :cond_0

    iput p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    iput p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    iput p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    :goto_0
    iput p3, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentPolicy:I

    iput p4, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentType:I

    iput p5, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxWidthSize:F

    iput p6, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxHeightSize:F

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mViewId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxWidthSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxHeightSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    return-void
.end method

.method private blacklist setLayoutPercentSize(IILandroid/view/View;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxWidthSize:F

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxHeightSize:F

    mul-float/2addr v3, v1

    iget v1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget v1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentType:I

    const/16 v5, 0x8

    if-eq v1, v5, :cond_1

    const/16 p1, 0x9

    if-eq v1, p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    iget p0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    mul-float/2addr p1, p0

    invoke-static {p1, v4, v3}, Ljava/lang/Math;->clamp(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    int-to-float p1, p1

    iget p0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    mul-float/2addr p1, p0

    invoke-static {p1, v4, v2}, Ljava/lang/Math;->clamp(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    int-to-float p1, p1

    iget v1, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    mul-float/2addr p1, v1

    invoke-static {p1, v4, v2}, Ljava/lang/Math;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float v1, p1

    iget v2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float p2, p2

    iget v2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    mul-float/2addr p2, v2

    invoke-static {p2, v4, v3}, Ljava/lang/Math;->clamp(FFF)F

    move-result p2

    float-to-int p2, p2

    int-to-float v2, p2

    iget p0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    mul-float/2addr v2, p0

    float-to-int p0, v2

    if-ge p1, p0, :cond_3

    if-ge v1, p2, :cond_3

    goto :goto_0

    :cond_3
    move p1, p0

    move v1, p2

    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 1

    iget p3, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mViewId:I

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
    invoke-direct {p0, p3, p2, p1}, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->setLayoutPercentSize(IILandroid/view/View;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Container\'s size is not measured yet"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist getActionTag()I
    .locals 0

    const/16 p0, 0x6f

    return p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mWidthPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mHeightPercent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mPercentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxWidthSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mMaxHeightSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Landroid/widget/RemoteViews$SetPercentLayoutSizeAction;->mRatio:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
