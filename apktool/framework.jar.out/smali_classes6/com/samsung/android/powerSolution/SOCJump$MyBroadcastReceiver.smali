.class public Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SOCJump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/powerSolution/SOCJump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyBroadcastReceiver"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "powerSolution_SOCJump_"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private blacklist onEventRun(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "/data/log/eSOC.txt"

    const-string/jumbo v0, "powerSolution_SOCJump_ File created: "

    new-instance v1, Lcom/samsung/android/powerSolution/SOCJump$SOC;

    invoke-direct {v1, p1}, Lcom/samsung/android/powerSolution/SOCJump$SOC;-><init>(I)V

    sput-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    sget-object p1, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    iget p1, p1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    sget-object p1, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    sget-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    invoke-virtual {p1, v1}, Lcom/samsung/android/powerSolution/SOCJump$SOC;->socJumpcheck(Lcom/samsung/android/powerSolution/SOCJump$SOC;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 p1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/powerSolution/SOCJump;->mFileObject:Ljava/io/File;

    sget-object v3, Lcom/samsung/android/powerSolution/SOCJump;->mFileObject:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const-string v4, "Time\t\t\t\t|SOC jump from\t|SOC jump to\n"

    if-eqz v3, :cond_0

    :try_start_1
    sget-object v3, Lcom/samsung/android/powerSolution/SOCJump;->mFileObject:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :try_start_4
    invoke-virtual {v6, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    move-object v5, p1

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v5, p1

    goto/16 :goto_5

    :cond_0
    move-object v5, p1

    move-object v6, v5

    :goto_0
    :try_start_5
    sget-object v3, Lcom/samsung/android/powerSolution/SOCJump;->mFileObject:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const-string v7, "\n"

    const-string v8, "\t\t\t|\t"

    const-string v9, "\t|\t"

    const/4 v10, 0x1

    if-eqz v3, :cond_1

    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mFileObject:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/powerSolution/SOCJump;->-$$Nest$smdateFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    iget v1, v1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    iget v1, v1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    sput-object v0, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_1
    move-exception v0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v0

    goto/16 :goto_5

    :catchall_2
    move-exception p0

    move-object v5, p1

    goto/16 :goto_3

    :catch_3
    move-exception p0

    move-object v5, p1

    goto/16 :goto_4

    :catchall_3
    move-exception p0

    goto/16 :goto_3

    :catch_4
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :try_start_a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/powerSolution/SOCJump;->-$$Nest$smdateFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    iget v1, v1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    iget v1, v1, Lcom/samsung/android/powerSolution/SOCJump$SOC;->battery:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_7

    :catchall_4
    move-exception v1

    move-object v5, p1

    move-object v3, v0

    move-object p1, p0

    move-object p0, v1

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v5, p1

    move-object v3, v0

    move-object p1, p0

    move-object p0, v1

    goto :goto_5

    :catchall_5
    move-exception p0

    move-object v5, p1

    goto :goto_1

    :catch_6
    move-exception p0

    move-object v5, p1

    goto :goto_2

    :catchall_6
    move-exception p0

    :goto_1
    move-object v3, v0

    goto :goto_3

    :catch_7
    move-exception p0

    :goto_2
    move-object v3, v0

    goto :goto_4

    :catchall_7
    move-exception p0

    move-object v3, p1

    :goto_3
    move-object p1, v6

    goto :goto_6

    :catch_8
    move-exception p0

    move-object v3, p1

    :goto_4
    move-object p1, v6

    goto :goto_5

    :catchall_8
    move-exception p0

    move-object v3, p1

    move-object v5, v3

    goto :goto_6

    :catch_9
    move-exception p0

    move-object v3, p1

    move-object v5, v3

    :goto_5
    :try_start_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "An error occurred."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_7

    :catchall_9
    move-exception p0

    :goto_6
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw p0

    :cond_7
    :goto_7
    sget-object p0, Lcom/samsung/android/powerSolution/SOCJump;->mCurrentSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    sput-object p0, Lcom/samsung/android/powerSolution/SOCJump;->mPreviousSoc:Lcom/samsung/android/powerSolution/SOCJump$SOC;

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/powerSolution/SOCJump$MyBroadcastReceiver;->onEventRun(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
