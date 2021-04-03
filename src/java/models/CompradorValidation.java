package models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author Vanesa
 */
public class CompradorValidation implements Validator{

    /**
     *
     * @param type
     * @return
     */
    @Override
    public boolean supports(Class<?> type) {
        return Comprador.class.isAssignableFrom(type);
    }

    /**
     *
     * @param o
     * @param errors
     */
    @Override
    public void validate(Object o, Errors errors) {
        Comprador comprador = (Comprador)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "id_daco", 
                "requiered.id_daco ",
                "El campo id es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "Razon_social", 
                "requiered.Razon_social",
                "El campo Razon social es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "Direccion", 
                "requiered.Direccion",
                "El campo Direccion es obligatorio");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "Telefono", 
                "requiered.Telefono",
                "El campo Telefono es obligatorio");
         ValidationUtils.rejectIfEmptyOrWhitespace(errors,
                "Correo_Electronico", 
                "requiered.Correo_Electronico",
                "El campoCorreo Electronico es obligatorio");
    }

}