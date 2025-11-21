.class Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;
.super Ljava/lang/Thread;
.source "SemVideoTranscoderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscoderThread"
.end annotation


# static fields
.field private static final blacklist THREAD_PREFIX:Ljava/lang/String; = "transcoder"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transcoder"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "]"

    const-string v2, "Task("

    const-string v3, "Unsupported mode ("

    const-string v4, "    SEM_METADATA_KEY_RECORDINGMODE["

    const-string v5, "    SEM_METADATA_KEY_VIDEO_BIT_DEPTH["

    const-string v6, "    SEM_METADATA_KEY_HDR10_VIDEO["

    const-string v7, "    METADATA_KEY_COLOR_TRANSFER["

    const-string v8, "    METADATA_KEY_VIDEO_HEIGHT["

    const-string v9, "    METADATA_KEY_VIDEO_WIDTH["

    const-string v10, "Client has stopped "

    invoke-super {v1}, Ljava/lang/Thread;->run()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is running"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemVideoTranscodingService"

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v13, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v13, v13, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mArgs:Ljava/util/Map;

    const-string v14, "input-path"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v14, v14, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mArgs:Ljava/util/Map;

    const-string/jumbo v15, "output-path"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v15, v13}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v11, 0x12

    invoke-virtual {v15, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v10

    const/16 v10, 0x13

    move-object/from16 v17, v2

    :try_start_1
    invoke-virtual {v15, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x24

    invoke-virtual {v15, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v13

    const/16 v13, 0x403

    invoke-virtual {v15, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v14

    const/16 v14, 0x404

    invoke-virtual {v15, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v3

    const/16 v3, 0x3fe

    invoke-virtual {v15, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v4, v4, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v4, v4, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$smisSupportedHdrToSdr()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v8, :cond_6

    const/16 v9, 0xc

    if-eq v3, v9, :cond_6

    const/16 v9, 0xd

    if-eq v3, v9, :cond_6

    const/16 v9, 0xf

    if-eq v3, v9, :cond_6

    const/16 v9, 0x13

    if-eq v3, v9, :cond_6

    if-eq v3, v4, :cond_6

    goto :goto_1

    :cond_6
    if-ne v3, v4, :cond_3

    const/4 v3, 0x5

    :goto_0
    move v4, v8

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$smisSupportedHdrToSdr()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_a

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "yes"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-gt v3, v5, :cond_3

    :cond_a
    :goto_1
    move v3, v6

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v4}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v4

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-virtual {v4, v14, v0, v2, v13}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mMode:I

    if-ne v0, v7, :cond_c

    :cond_b
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setOutputConfig(II)V

    :cond_c
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iput-boolean v8, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->-$$Nest$fgetmTranscoder(Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;)Lcom/samsung/android/media/codec/SemVideoTranscoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->encode()V

    new-instance v0, Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, v17

    :try_start_2
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v3, v3, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") has been finished"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    move-object/from16 v2, v17

    const-string v0, "Invalid argument"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v16, v10

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has been terminated unexpectedly"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-boolean v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIgnoreError:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ignore this error."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_e
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_6
    return-void

    :goto_7
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mIsRunning:Z

    :try_start_8
    iget-object v0, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient$TranscoderThread;->this$0:Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemVideoTranscoderClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_8
    throw v2
.end method
