package ru.unc6.promeets.model.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.*;

/**
 * Created by Vladimir on 30.01.2016.
 */
@Entity
@Table(name = "meet_notes", schema = "public", catalog = "promeets_db")
public class MeetNote {
    private long noteId;
    private String value;
    private Meet meet;
    private MeetAim aim;

    @Id
    @Column(name = "note_id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getNoteId() {
        return noteId;
    }

    public void setNoteId(long noteId) {
        this.noteId = noteId;
    }

    @Basic
    @Column(name = "value", nullable = false, length = -1)
    public String getValue() {
        return value;
    }

    public void setValue(String text) {
        this.value = text;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MeetNote meetNote = (MeetNote) o;

        if (noteId != meetNote.noteId) return false;
        if (value != null ? !value.equals(meetNote.value) : meetNote.value != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (noteId ^ (noteId >>> 32));
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "meet_id", referencedColumnName = "meet_id", nullable = false)
    public Meet getMeet() {
        return meet;
    }

    public void setMeet(Meet meet) {
        this.meet = meet;
    }

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "aim_id", referencedColumnName = "aim_id")
    public MeetAim getAim() {
        return aim;
    }

    public void setAim(MeetAim aim) {
        this.aim = aim;
    }
}
