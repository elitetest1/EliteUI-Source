.class Landroid/media/quality/MediaQualityManager$4;
.super Landroid/media/quality/IActiveProcessingPictureListener$Stub;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager;-><init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$4;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-direct {p0}, Landroid/media/quality/IActiveProcessingPictureListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActiveProcessingPicturesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/ActiveProcessingPicture;

    invoke-virtual {v2}, Landroid/media/quality/ActiveProcessingPicture;->isForGlobal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/media/quality/MediaQualityManager$4;->this$0:Landroid/media/quality/MediaQualityManager;

    invoke-static {p0}, Landroid/media/quality/MediaQualityManager;->-$$Nest$fgetmApListenerRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    invoke-static {v1}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->-$$Nest$fgetmIsGlobal(Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->postActiveProcessingPicturesChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->postActiveProcessingPicturesChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method
