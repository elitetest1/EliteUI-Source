.class Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;
.super Landroid/os/Handler;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "received Extraction data : success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "req_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "SemExtractedInfo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v2, v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    const-wide/16 v3, -0x1

    const-string v5, " extracted size : "

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sent to mOnExtractionCompletedListener ReqTime : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v2, v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    invoke-interface {v2, v0, v1, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;->onExtractionCompleted(JLjava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$fputmRequestNumber(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "mInfoExtractionResultListener is NULL"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v2, v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sent to InfoExtractionListener ReqTime : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v2, v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    long-to-int v0, v0

    invoke-interface {v2, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;->onCompleted(ILjava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "mInfoExtractionListener is NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-$$Nest$fputmRequestNumber(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)V

    return-void
.end method
