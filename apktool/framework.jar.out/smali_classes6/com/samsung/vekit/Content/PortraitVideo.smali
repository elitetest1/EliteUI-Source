.class public Lcom/samsung/vekit/Content/PortraitVideo;
.super Lcom/samsung/vekit/Content/Video;
.source "PortraitVideo.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Content/Video;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    sget-object p1, Lcom/samsung/vekit/Common/Type/ContentType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    iput-object p1, p0, Lcom/samsung/vekit/Content/PortraitVideo;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    return-void
.end method
