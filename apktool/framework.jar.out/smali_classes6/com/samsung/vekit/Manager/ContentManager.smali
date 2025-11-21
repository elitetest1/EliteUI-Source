.class public Lcom/samsung/vekit/Manager/ContentManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Content/Content;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->CONTENT:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist create(Lcom/samsung/vekit/Common/Type/ContentType;Ljava/lang/String;)Lcom/samsung/vekit/Content/Content;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/ContentManager;->generateUniqueId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/samsung/vekit/Manager/ContentManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$ContentType:[I

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ContentType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p1, Lcom/samsung/vekit/Content/PortraitVideo;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/PortraitVideo;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/samsung/vekit/Content/FragmentAudio;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/FragmentAudio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/samsung/vekit/Content/Caption;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/Caption;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lcom/samsung/vekit/Content/Video;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/Video;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/samsung/vekit/Content/AnimatedImage;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/AnimatedImage;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lcom/samsung/vekit/Content/Image;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/Image;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance p1, Lcom/samsung/vekit/Content/Doodle;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/Doodle;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance p1, Lcom/samsung/vekit/Content/Audio;

    iget-object v0, p0, Lcom/samsung/vekit/Manager/ContentManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/vekit/Content/Audio;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Manager/ContentManager;->add(Ljava/lang/Object;)V

    return-object p1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/vekit/Manager/ContentManager;->TAG:Ljava/lang/String;

    const-string p2, "create: "

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
