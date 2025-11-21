.class Lcom/samsung/android/service/SemService/SemServiceManager$1;
.super Ljava/lang/Object;
.source "SemServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/SemService/SemServiceManager;->deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

.field final synthetic blacklist val$aid:Ljava/util/ArrayList;

.field final synthetic blacklist val$flag:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    iput-object p2, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "Flag Error"

    const-string v2, "03"

    const-string v3, "SEC_ESE_ServiceManager"

    const-string v4, "Selet Fail"

    const-string v5, "Select SW : "

    const-string v6, "Open Error "

    const/16 v7, 0xe

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    const v8, 0x16800

    new-array v9, v8, [B

    const/4 v10, 0x5

    new-array v11, v10, [B

    fill-array-data v11, :array_1

    new-array v12, v10, [B

    fill-array-data v12, :array_2

    :try_start_0
    iget-object v15, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    if-eqz v15, :cond_28

    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_18

    const/16 v16, 0x1

    const-string v14, "02"

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AID Null Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "AID Error"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_16

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    const/16 v17, 0x0

    goto/16 :goto_18

    :catch_2
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_1d

    :catch_4
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_1f

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_18

    if-nez v0, :cond_27

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_e

    const-string v6, "RESP Error"

    if-eqz v0, :cond_26

    :try_start_4
    array-length v7, v0

    const/4 v15, 0x2

    if-lt v7, v15, :cond_26

    array-length v7, v0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v7, -0x2

    aget-byte v19, v0, v5

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v7, -0x1

    aget-byte v19, v0, v10

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_25

    aget-byte v5, v0, v5

    const/16 v7, -0x70

    if-ne v5, v7, :cond_25

    aget-byte v5, v0, v10

    if-nez v5, :cond_25

    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_e

    const-string v4, "BDAL Fail"

    const-string v5, "BDAL Error"

    const-string v8, "Start ALL BDAL"

    const-string v10, "RSP SW : "

    if-eqz v0, :cond_4

    :try_start_5
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v8, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v8, v0

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    array-length v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v5, -0x2

    aget-byte v9, v0, v8

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, -0x1

    aget-byte v10, v0, v9

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    aget-byte v5, v0, v8

    if-ne v5, v7, :cond_2

    aget-byte v0, v0, v9

    if-nez v0, :cond_2

    const-string v0, "BDAL Success"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_3
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    move-exception v0

    move/from16 v13, v16

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move/from16 v17, v16

    const/4 v13, 0x0

    goto/16 :goto_18

    :catch_7
    move-exception v0

    move/from16 v13, v16

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move/from16 v13, v16

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    move/from16 v13, v16

    goto/16 :goto_1f

    :cond_4
    :try_start_6
    const-string v0, "Start Get-L"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_e

    move-object/from16 v20, v5

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_1
    const/16 v5, 0x14

    if-ge v15, v5, :cond_d

    if-eqz v0, :cond_5

    :try_start_7
    const-string v0, "M"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v0, v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v0

    array-length v5, v0

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v0, v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v0

    array-length v5, v0

    :goto_2
    move-object/from16 v21, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v12

    const-string v12, "List SW : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v5, -0x2

    aget-byte v23, v0, v12

    move/from16 v24, v15

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v5, -0x1

    aget-byte v23, v0, v15

    move/from16 v25, v15

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5

    const-string v11, "Size Error"

    const/4 v15, 0x2

    if-lt v5, v15, :cond_8

    :try_start_8
    aget-byte v15, v0, v12

    move-object/from16 v23, v4

    const/16 v4, 0x63

    if-ne v15, v4, :cond_7

    aget-byte v4, v0, v25

    const/16 v15, 0x10

    if-ne v4, v15, :cond_7

    const-string v4, "M-Get List"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v4, v7, v12

    const v5, 0x16800

    if-le v4, v5, :cond_6

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    invoke-static {v0, v5, v9, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    :goto_3
    add-int/lit8 v15, v24, 0x1

    move/from16 v0, v16

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v4, v23

    goto :goto_1

    :cond_7
    const/4 v15, 0x2

    goto :goto_4

    :cond_8
    move-object/from16 v23, v4

    :goto_4
    if-lt v5, v15, :cond_b

    aget-byte v4, v0, v12

    const/16 v15, -0x70

    if-ne v4, v15, :cond_a

    aget-byte v4, v0, v25

    if-nez v4, :cond_a

    const-string v4, "Get List Succ"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v4, v7, v12

    const v5, 0x16800

    if-le v4, v5, :cond_9

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    invoke-static {v0, v5, v9, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v0, v9, v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L CNT : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    const/4 v15, 0x2

    :cond_b
    if-lt v5, v15, :cond_c

    aget-byte v4, v0, v12

    const/16 v5, 0x6a

    if-ne v4, v5, :cond_c

    aget-byte v0, v0, v25

    const/16 v4, -0x78

    if-ne v0, v4, :cond_c

    const-string v0, "List Null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_5

    :catch_a
    move-exception v0

    move/from16 v13, v16

    move/from16 v17, v13

    goto/16 :goto_18

    :cond_c
    :try_start_a
    const-string v0, "Get List Fail"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_5

    :cond_d
    move-object/from16 v23, v4

    :cond_e
    :goto_6
    move-object/from16 v0, v18

    :try_start_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_e

    if-nez v0, :cond_10

    :try_start_c
    const-string/jumbo v0, "whiteAidList Null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_5

    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_12

    :cond_10
    :try_start_d
    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_e

    const-string v5, "COM List : "

    const-string v7, ""

    const-string v9, "#"

    const-string v11, "*"

    if-eqz v4, :cond_17

    :try_start_e
    const-string v4, "Start LD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    const/4 v6, 0x0

    :goto_8
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_14

    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_11

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v6, "N A-DAL"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v6, "* A-DAL"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v6, "# A-DAL"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    :goto_9
    const-string v8, "COM Data Error"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_5

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_16
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_17
    :try_start_f
    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "Start BLD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_e

    if-lez v4, :cond_1f

    :try_start_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1f

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x0

    :goto_c
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_1d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1c

    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_18

    goto/16 :goto_d

    :cond_18
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_5

    if-eqz v10, :cond_19

    :try_start_11
    const-string v6, "N"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_f

    :cond_19
    :try_start_12
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_5

    if-eqz v10, :cond_1a

    :try_start_13
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_5

    goto :goto_f

    :cond_1a
    :try_start_14
    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_5

    const/16 v17, 0x0

    :try_start_15
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_10

    :cond_1b
    const/16 v17, 0x0

    goto :goto_e

    :cond_1c
    :goto_d
    const/16 v17, 0x0

    const-string v10, "COM Data Error"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    :cond_1d
    :goto_f
    const/16 v17, 0x0

    :goto_10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v6, "A-DAL"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_5

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    :catch_b
    move-exception v0

    goto :goto_11

    :catch_c
    move-exception v0

    const/16 v17, 0x0

    :goto_11
    move/from16 v13, v17

    move/from16 v17, v16

    goto/16 :goto_18

    :cond_1f
    const/16 v17, 0x0

    :try_start_16
    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$aid:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v16

    if-ge v4, v5, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    iget-object v4, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v0

    if-eqz v0, :cond_21

    array-length v4, v0

    const/4 v15, 0x2

    if-lt v4, v15, :cond_21

    array-length v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, -0x2

    aget-byte v7, v0, v6

    invoke-static {v7}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, -0x1

    aget-byte v8, v0, v7

    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x2

    if-lt v4, v15, :cond_20

    aget-byte v4, v0, v6

    const/16 v15, -0x70

    if-ne v4, v15, :cond_20

    aget-byte v0, v0, v7

    if-nez v0, :cond_20

    const-string v0, "BDAL Success"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_20
    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_21
    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/16 v17, 0x0

    const-string v0, "Type Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DL CNT : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ge v0, v5, :cond_24

    const-string v0, "DA List Null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_24
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v0, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I

    goto :goto_13

    :cond_25
    const/16 v17, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    const/4 v5, 0x1

    goto/16 :goto_21

    :cond_26
    const/16 v17, 0x0

    const-string v0, "Select Error"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_16} :catch_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_16 .. :try_end_16} :catch_10
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_e

    :catch_d
    move-exception v0

    goto :goto_14

    :catch_e
    move-exception v0

    const/4 v13, 0x1

    goto :goto_16

    :catch_f
    move-exception v0

    const/16 v17, 0x0

    :goto_14
    move/from16 v13, v17

    const/16 v17, 0x1

    goto :goto_18

    :catch_10
    move-exception v0

    const/4 v13, 0x1

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    const/4 v13, 0x1

    goto/16 :goto_1d

    :catch_12
    move-exception v0

    const/4 v13, 0x1

    goto/16 :goto_1f

    :cond_27
    const/16 v17, 0x0

    :try_start_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    const-string v4, "OPEN Error"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/16 v17, 0x0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_17} :catch_16
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_13

    :catch_13
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_15
    move-exception v0

    goto :goto_1a

    :catch_16
    move-exception v0

    goto :goto_1c

    :catch_17
    move-exception v0

    goto :goto_1e

    :catch_18
    move-exception v0

    const/16 v17, 0x0

    :goto_15
    move/from16 v13, v17

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_19
    move-exception v0

    const/16 v17, 0x0

    :goto_17
    move/from16 v13, v17

    :goto_18
    if-eqz v13, :cond_29

    goto :goto_19

    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    move/from16 v5, v17

    goto :goto_21

    :catch_1a
    move-exception v0

    const/16 v17, 0x0

    :goto_1a
    move/from16 v13, v17

    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to link."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_1b
    move-exception v0

    const/16 v17, 0x0

    :goto_1c
    move/from16 v13, v17

    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find class."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_1c
    move-exception v0

    const/16 v17, 0x0

    :goto_1e
    move/from16 v13, v17

    :goto_1f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to connect service."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    move v5, v13

    :goto_21
    if-eqz v5, :cond_2a

    :try_start_18
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    goto :goto_22

    :catch_1d
    move-exception v0

    goto :goto_23

    :catch_1e
    move-exception v0

    goto :goto_24

    :cond_2a
    :goto_22
    iget-object v0, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->val$flag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "Set PROP"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.action.CDA_FINISH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.action.CDA_VALUE"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.telephonyui"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v1, Lcom/samsung/android/service/SemService/SemServiceManager$1;->this$0:Lcom/samsung/android/service/SemService/SemServiceManager;

    invoke-static {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "security.cdafinish"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_1d

    goto :goto_25

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROP Error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROP Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_25
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x80t
        -0x8t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x80t
        -0x8t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method
