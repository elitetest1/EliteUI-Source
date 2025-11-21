.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyphrase"
.end annotation


# instance fields
.field private final blacklist id:I

.field blacklist instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist recognitionModes:I

.field private final blacklist text:Ljava/lang/String;

.field private final blacklist users:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetid(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlocale(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrecognitionModes(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettext(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusers(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    return-object p0
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    iput p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->instance:Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyphrase [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;->users:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
