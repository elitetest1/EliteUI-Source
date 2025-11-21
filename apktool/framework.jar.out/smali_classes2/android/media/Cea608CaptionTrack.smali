.class Landroid/media/Cea608CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private final blacklist mCCParser:Landroid/media/Cea608CCParser;

.field private final blacklist mRenderingWidget:Landroid/media/Cea608CCWidget;


# direct methods
.method constructor blacklist <init>(Landroid/media/Cea608CCWidget;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    iput-object p1, p0, Landroid/media/Cea608CaptionTrack;->mRenderingWidget:Landroid/media/Cea608CCWidget;

    new-instance p2, Landroid/media/Cea608CCParser;

    invoke-direct {p2, p1}, Landroid/media/Cea608CCParser;-><init>(Landroid/media/Cea608CCParser$DisplayListener;)V

    iput-object p2, p0, Landroid/media/Cea608CaptionTrack;->mCCParser:Landroid/media/Cea608CCParser;

    return-void
.end method


# virtual methods
.method public blacklist getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 0

    iget-object p0, p0, Landroid/media/Cea608CaptionTrack;->mRenderingWidget:Landroid/media/Cea608CCWidget;

    return-object p0
.end method

.method public blacklist onData([BZJ)V
    .locals 0

    iget-object p0, p0, Landroid/media/Cea608CaptionTrack;->mCCParser:Landroid/media/Cea608CCParser;

    invoke-virtual {p0, p1}, Landroid/media/Cea608CCParser;->parse([B)V

    return-void
.end method

.method public blacklist updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
