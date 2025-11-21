.class Landroid/media/MediaExtractor$2;
.super Landroid/media/DrmInitData;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaExtractor;->getDrmInitData()Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    invoke-direct {p0}, Landroid/media/DrmInitData;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object p0
.end method

.method public whitelist getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaExtractor$2;->val$webmSchemeInitData:Landroid/media/DrmInitData$SchemeInitData;

    return-object p0
.end method

.method public whitelist getSchemeInitDataCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
