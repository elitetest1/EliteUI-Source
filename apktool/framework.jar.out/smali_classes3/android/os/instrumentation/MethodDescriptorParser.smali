.class public final Landroid/os/instrumentation/MethodDescriptorParser;
.super Ljava/lang/Object;
.source "MethodDescriptorParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;
    .locals 8

    :try_start_0
    iget-object v0, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    iget-object v4, p1, Landroid/os/instrumentation/MethodDescriptor;->fullyQualifiedParameters:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v6, "short"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v6, "float"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_2
    const-string v6, "boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v6, "long"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_4
    const-string v7, "char"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v6, "byte"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_6
    const-string v6, "int"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_7
    const-string v6, "double"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    if-eqz v5, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto/16 :goto_b

    :pswitch_0
    if-eqz v5, :cond_2

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    :cond_2
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_3
    aput-object v4, v1, v3

    goto/16 :goto_d

    :pswitch_1
    if-eqz v5, :cond_3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_4

    :cond_3
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :goto_4
    aput-object v4, v1, v3

    goto/16 :goto_d

    :pswitch_2
    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_5

    :cond_4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :goto_5
    aput-object v4, v1, v3

    goto :goto_d

    :pswitch_3
    if-eqz v5, :cond_5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_6

    :cond_5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_6
    aput-object v4, v1, v3

    goto :goto_d

    :pswitch_4
    if-eqz v5, :cond_6

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_7

    :cond_6
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_7
    aput-object v4, v1, v3

    goto :goto_d

    :pswitch_5
    if-eqz v5, :cond_7

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_8

    :cond_7
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    :goto_8
    aput-object v4, v1, v3

    goto :goto_d

    :pswitch_6
    if-eqz v5, :cond_8

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_9

    :cond_8
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    :goto_9
    aput-object v4, v1, v3

    goto :goto_d

    :pswitch_7
    if-eqz v5, :cond_9

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_a

    :cond_9
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    :goto_a
    aput-object v4, v1, v3

    goto :goto_d

    :goto_b
    invoke-virtual {v4}, Ljava/lang/Class;->arrayType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_c

    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    :goto_c
    aput-object v4, v1, v3

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    const-string v2, "<init>"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    :cond_c
    iget-object p0, p1, Landroid/os/instrumentation/MethodDescriptor;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified method cannot be found. Is this descriptor valid? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
