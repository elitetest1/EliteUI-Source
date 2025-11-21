.class Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;
.super Ljava/lang/Object;
.source "SemSoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SemSoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/SemSoundAlive;Landroid/media/audiofx/SemSoundAlive-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SemSoundAlive;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7

    iget-object p1, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {p1}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/SemSoundAlive;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v0}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    invoke-static {v0}, Landroid/media/audiofx/SemSoundAlive;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/SemSoundAlive;)Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    array-length p1, p3

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-lt p1, v2, :cond_2

    invoke-static {p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    array-length v4, p3

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    move v4, p1

    move v5, p3

    goto :goto_1

    :cond_1
    move v4, p1

    move v5, v3

    goto :goto_1

    :cond_2
    move v4, v3

    move v5, v4

    :goto_1
    array-length p1, p4

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result p1

    :goto_2
    move v6, p1

    goto :goto_3

    :cond_3
    array-length p1, p4

    if-ne p1, v2, :cond_4

    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p1

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_3
    if-eq v4, v3, :cond_5

    if-eq v6, v3, :cond_5

    iget-object v2, p0, Landroid/media/audiofx/SemSoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SemSoundAlive;

    move v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/media/audiofx/SemSoundAlive$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/SemSoundAlive;IIII)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
