class CertificateAttendancePdf < Prawn::Document

    def initialize(event, organization, voluntary, user, user_org)
       
        super(top_margin: 70,
            page_layout: :landscape)
        border
        fill_color "000000"
        title(organization, user_org)
        move_down 20
        title_cert
        move_down 30
        title_2(user)
        move_down 10
        actividad(event)
        move_down 20
        conclusion
        move_down 30
        bouele

    end

    def border
        canvas do
            fill_circle [bounds.left, bounds.top], 50
            fill_circle [bounds.right, bounds.top], 50
            fill_circle [bounds.right, bounds.bottom], 50
            fill_circle [0, 0], 50
            fill_color "ffc107"
            fill_circle [bounds.left, bounds.top], 20
            fill_circle [bounds.right, bounds.top], 20
            fill_circle [bounds.right, bounds.bottom], 20
            fill_circle [0, 0], 20
           end
    end

    def title(organization, user_org)
        y_position = cursor
        image "#{Rails.root}/public/#{user_org.image.url}", :position => :center, :width => 75, :height => 75
        move_down 5
        text organization.firm, :align => :center, :size => 14, :style => :bold_italic, :font => "Courier" 
        move_down 5
        stroke_horizontal_rule
    end

    def title_cert
        text "CERTIFICADO DE ASISTENCIA", :align => :center, :size => 40, :style => :bold
    end

    def title_2(user)
        text "Por la presente certifica que", :align => :center, :size => 20
        move_down 40
        text user.name, :align => :center, :size => 20, :style => :italic
    end

    def actividad(event)
        text "Ha participado del evento", :align => :center, :size => 15
        move_down 5
        text event.name, :align => :center, :size => 15, :style => :italic
        move_down 7
        time = Time.at((event.start_datetime/1000).to_i).localtime
        text "El día " + time.strftime("%Y-%m-%d") + " a las " + time.strftime("%I:%M %p  %Z") , :align => :center, :size => 15, :style => :italic
        move_down 7
        text "Las personas encargadas del evento fueron", :align => :center, :size => 15
        move_down 5
        persons = ""
        event.locations.each do |l|
            persons += l.person_name
        end
        text persons, :align => :center, :size => 15, :style => :italic
    end

    def conclusion
        time = Time.now
        text "Este certificado se entrega el día " + time.strftime("%Y-%m-%d") + " a peticion del interesado.",:align => :center
    end

    def bouele
        text "Generado automaticamente por Bouele del grupo CyclingApp 2018", :align => :right, :size => 8
        move_down 2
        image "#{Rails.root}/public/logo.jpeg", :position => :right, :width => 50
    end
   
    
end