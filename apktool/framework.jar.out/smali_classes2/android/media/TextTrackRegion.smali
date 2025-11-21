.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# static fields
.field static final greylist-max-o SCROLL_VALUE_NONE:I = 0x12c

.field static final greylist-max-o SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field greylist-max-o mAnchorPointX:F

.field greylist-max-o mAnchorPointY:F

.field greylist-max-o mId:Ljava/lang/String;

.field greylist-max-o mLines:I

.field greylist-max-o mScrollValue:I

.field greylist-max-o mViewportAnchorPointX:F

.field greylist-max-o mViewportAnchorPointY:F

.field greylist-max-o mWidth:F


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/media/TextTrackRegion;->mWidth:F

    const/4 v1, 0x3

    iput v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    iput v0, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    iput v0, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    const/16 v0, 0x12c

    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorPoint:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "), viewportAnchorPoints:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), scrollValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    const/16 v1, 0x12c

    if-ne p0, v1, :cond_0

    const-string p0, "none"

    goto :goto_0

    :cond_0
    const/16 v1, 0x12d

    if-ne p0, v1, :cond_1

    const-string p0, "scroll_up"

    goto :goto_0

    :cond_1
    const-string p0, "INVALID"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
