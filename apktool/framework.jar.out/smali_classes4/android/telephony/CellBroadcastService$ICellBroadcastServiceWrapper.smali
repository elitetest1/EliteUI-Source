.class public Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;
.super Landroid/telephony/ICellBroadcastService$Stub;
.source "CellBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICellBroadcastServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/CellBroadcastService;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/CellBroadcastService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-direct {p0}, Landroid/telephony/ICellBroadcastService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$handleCdmaScpMessage$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/CellBroadcastService;->access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public blacklist handleCdmaCellBroadcastSms(I[BI)V
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->onCdmaCellBroadcastSms(I[BI)V

    return-void
.end method

.method public blacklist handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    iget-object p0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/telephony/CellBroadcastService;->onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist handleGsmCellBroadcastSms(I[B)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v8, 0x0

    aget-byte v4, v0, v8

    and-int/lit16 v4, v4, 0xff

    or-int v5, v3, v4

    new-array v3, v5, [B

    const/4 v4, 0x4

    invoke-static {v0, v4, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v6, v3}, Landroid/telephony/CellBroadcastService;->-$$Nest$mcreateSmsCbHeader(Landroid/telephony/CellBroadcastService;[B)Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "header="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "CellBroadcastService"

    invoke-static {v9, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_0

    goto/16 :goto_e

    :cond_0
    move-object v7, v3

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v3

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ne v3, v2, :cond_7

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_0
    const-string v3, "Single page. Not UMTS format"

    invoke-static {v9, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v3, v0, v10

    and-int/lit16 v4, v3, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v10, v0, v11
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/lit16 v12, v10, 0xff

    or-int/2addr v4, v12

    if-lez v4, :cond_1

    add-int/lit8 v6, v4, 0x2

    :try_start_1
    new-array v12, v6, [B

    aput-byte v10, v12, v8

    aput-byte v3, v12, v2

    add-int/lit8 v2, v5, 0x4

    invoke-static {v0, v2, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v7

    move-object v4, v12

    move/from16 v7, p1

    :try_start_2
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V

    return-void

    :catch_0
    move-exception v0

    move-object v3, v7

    goto :goto_2

    :cond_1
    move-object v3, v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v0

    const/16 v2, 0x1130

    if-ne v0, v2, :cond_2

    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V

    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0x38

    if-le v5, v0, :cond_5

    const-string v0, "Remove padding bit and convert GSM to UMTS."

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_4

    aget-byte v2, v3, v0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    :try_start_3
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    move/from16 v7, p1

    move-object v12, v3

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_2
    move/from16 v7, p1

    :goto_3
    move-object v12, v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v12, v7

    move/from16 v7, p1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in decoding SMS CB pdu "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, v7, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    return-void

    :cond_6
    move-object v12, v7

    move/from16 v7, p1

    :goto_5
    const-string v0, "Converting is not needed"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, v7, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    return-void

    :cond_7
    move-object v12, v7

    move/from16 v7, p1

    if-le v3, v2, :cond_13

    new-instance v13, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v13, v6, v14, v15, v7}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;JI)V

    iget-object v14, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v14}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    if-nez v14, :cond_8

    new-array v14, v3, [[B

    iget-object v15, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v15}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v2

    const-string/jumbo v2, "pdus size="

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v14

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v12, v14, v2

    array-length v2, v14

    move v12, v8

    :goto_6
    if-ge v12, v2, :cond_a

    aget-object v15, v14, v12

    if-nez v15, :cond_9

    const-string/jumbo v0, "still missing pdu"

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_a
    :try_start_4
    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v2}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v2}, Landroid/telephony/CellBroadcastService;->-$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    invoke-static {v12}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->-$$Nest$moverTime(Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "Remove saved message over 5min"

    invoke-static {v9, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_c
    aget-byte v2, v0, v10

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v12, v0, v11
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v2, v12

    if-lez v2, :cond_d

    :try_start_5
    const-string v6, "WAC included in GSM format multipage"

    invoke-static {v9, v6}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v2, 0x2

    move v12, v5

    new-array v5, v6, [B

    aget-byte v13, v0, v11

    aput-byte v13, v5, v8

    aget-byte v10, v0, v10

    aput-byte v10, v5, v16

    add-int/2addr v4, v12

    invoke-static {v0, v4, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v4, v14

    :try_start_6
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmtsForMultiPage(Landroid/telephony/CellBroadcastService;I[[B[BII)V

    return-void

    :catch_4
    move-exception v0

    move-object v4, v14

    goto :goto_b

    :cond_d
    move-object v4, v14

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "Remove padding bit and convert GSM to UMTS for multipage."

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v3, -0x1

    aget-object v2, v4, v0

    array-length v5, v2

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    :goto_8
    if-ltz v6, :cond_f

    aget-byte v7, v2, v6

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_f
    :goto_9
    new-array v6, v5, [B

    invoke-static {v2, v8, v6, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, v4, v0

    iget-object v2, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    :try_start_7
    invoke-static/range {v2 .. v7}, Landroid/telephony/CellBroadcastService;->-$$Nest$mconvertGsmToUmtsForMultiPage(Landroid/telephony/CellBroadcastService;I[[B[BII)V

    return-void

    :cond_10
    move/from16 v7, p1

    const-string v0, "No WAC. Deliver CB without converting."

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v4

    move v2, v8

    :goto_a
    if-ge v2, v0, :cond_12

    aget-object v3, v4, v2

    iget-object v5, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v5, v7, v3}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    :goto_b
    move/from16 v7, p1

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v4, v14

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in decoding SMS CB pdu"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_12

    array-length v0, v4

    :goto_d
    if-ge v8, v0, :cond_12

    aget-object v2, v4, v8

    if-eqz v2, :cond_11

    iget-object v3, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v3, v7, v2}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    :goto_e
    return-void

    :cond_13
    iget-object v0, v1, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, v7, v12}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    return-void
.end method
